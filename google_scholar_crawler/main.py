"""Fetch Google Scholar citation data and write results/gs_data.json.

Why this exists
---------------
Google Scholar blocks the datacenter IPs that GitHub Actions runners use, so a
plain ``scholarly`` fetch from CI almost always hits a CAPTCHA/429 and fails.
Free rotating proxies are too flaky to rely on. The robust fix is to route the
request through SerpApi's Google Scholar Author API when a key is available.

Strategy (in order)
  1. SerpApi  -- reliable in CI. Used when SERPAPI_KEY is set. Free tier is
     100 searches/month; the daily cron uses ~30, so it stays free.
  2. Direct scholarly -- works from residential IPs (e.g. running locally).
  3. Free rotating proxies -- last resort.

On total failure we write nothing and exit 0 so the workflow keeps the
previously published data instead of overwriting it with an empty file.
"""

import json
import os
import time
from datetime import datetime

import httpx
from scholarly import scholarly, ProxyGenerator

SCHOLAR_ID = os.environ.get("GOOGLE_SCHOLAR_ID", "zZ8lS-UAAAAJ")
SERPAPI_KEY = os.environ.get("SERPAPI_KEY", "").strip()

SERPAPI_ATTEMPTS = 3
DIRECT_ATTEMPTS = 2
PROXY_ATTEMPTS = 6


# --------------------------------------------------------------------------- #
# SerpApi path
# --------------------------------------------------------------------------- #
def _table_val(table, key):
    """cited_by.table is a list like [{'citations': {'all': N, ...}}, ...]."""
    for row in table or []:
        if key in row and isinstance(row[key], dict):
            return row[key].get("all", 0) or 0
    return 0


def _serpapi_to_author(data):
    """Map a SerpApi google_scholar_author response into the scholarly shape
    that main() and the frontend expect (only ``citedby`` is read live)."""
    table = (data.get("cited_by") or {}).get("table", [])
    author_info = data.get("author") or {}

    publications = []
    for art in data.get("articles", []):
        cited = art.get("cited_by") or {}
        publications.append({
            "author_pub_id": art.get("citation_id"),
            "num_citations": cited.get("value", 0) or 0,
            "citedby_url": cited.get("link"),
            "bib": {
                "title": art.get("title"),
                "pub_year": art.get("year"),
                "citation": art.get("publication"),
                "author": art.get("authors"),
            },
        })

    return {
        "container_type": "Author",
        "filled": ["basics", "indices", "counts", "publications"],
        "scholar_id": SCHOLAR_ID,
        "source": "SERPAPI_AUTHOR",
        "name": author_info.get("name"),
        "affiliation": author_info.get("affiliations"),
        "citedby": _table_val(table, "citations"),
        "hindex": _table_val(table, "h_index"),
        "i10index": _table_val(table, "i10_index"),
        "publications": publications,
    }


def fetch_via_serpapi():
    params = {
        "engine": "google_scholar_author",
        "author_id": SCHOLAR_ID,
        "api_key": SERPAPI_KEY,
        "num": 100,
    }
    resp = httpx.get("https://serpapi.com/search.json", params=params, timeout=60)
    resp.raise_for_status()
    data = resp.json()
    if data.get("error"):
        raise RuntimeError(f"SerpApi error: {data['error']}")
    author = _serpapi_to_author(data)
    if not author.get("name"):
        raise RuntimeError("SerpApi returned no author data")
    return author


# --------------------------------------------------------------------------- #
# scholarly paths (direct + free proxy)
# --------------------------------------------------------------------------- #
def fetch_via_scholarly():
    author = scholarly.search_author_id(SCHOLAR_ID)
    scholarly.fill(author, sections=["basics", "indices", "counts", "publications"])
    return author


def enable_free_proxy():
    pg = ProxyGenerator()
    if pg.FreeProxies():
        scholarly.use_proxy(pg)
        return True
    return False


def try_fetch():
    # 1) SerpApi (reliable in CI).
    if SERPAPI_KEY:
        for i in range(SERPAPI_ATTEMPTS):
            try:
                print(f"[serpapi] attempt {i + 1}/{SERPAPI_ATTEMPTS} ...")
                return fetch_via_serpapi()
            except Exception as e:  # noqa: BLE001
                print(f"[serpapi] failed: {type(e).__name__}: {e}")
                time.sleep(3)
    else:
        print("[serpapi] SERPAPI_KEY not set; skipping (set it for reliable CI runs)")

    # 2) Direct connection (works from residential IPs, e.g. running locally).
    for i in range(DIRECT_ATTEMPTS):
        try:
            print(f"[direct] attempt {i + 1}/{DIRECT_ATTEMPTS} ...")
            return fetch_via_scholarly()
        except Exception as e:  # noqa: BLE001 - scholarly raises many types
            print(f"[direct] failed: {type(e).__name__}: {e}")
            time.sleep(3)

    # 3) Free rotating proxies.
    for i in range(PROXY_ATTEMPTS):
        try:
            print(f"[proxy] attempt {i + 1}/{PROXY_ATTEMPTS} ...")
            if not enable_free_proxy():
                print("[proxy] no working free proxy this round")
                time.sleep(5)
                continue
            return fetch_via_scholarly()
        except Exception as e:  # noqa: BLE001
            print(f"[proxy] failed: {type(e).__name__}: {e}")
            time.sleep(5)

    return None


def main():
    # Always create the output dir so the publish step's working-directory exists.
    os.makedirs("results", exist_ok=True)

    author = try_fetch()
    if author is None:
        print("All fetch strategies failed. Keeping previously published data.")
        return  # exit 0, gs_data.json not written -> workflow guard skips push

    author["updated"] = str(datetime.now())
    author["publications"] = {
        v["author_pub_id"]: v for v in author["publications"] if v.get("author_pub_id")
    }

    with open("results/gs_data.json", "w") as f:
        json.dump(author, f, ensure_ascii=False)

    shieldio = {
        "schemaVersion": 1,
        "label": "citations",
        "message": f"{author.get('citedby', 0)}",
    }
    with open("results/gs_data_shieldsio.json", "w") as f:
        json.dump(shieldio, f, ensure_ascii=False)

    print(f"Success. citedby={author.get('citedby')}, "
          f"h-index={author.get('hindex')}, i10={author.get('i10index')}")


if __name__ == "__main__":
    main()
