"""Fetch Google Scholar citation data and write results/gs_data.json.

Robustness goals:
  * Try a direct connection first (fresh CI runner IPs often work), then fall
    back to free rotating proxies with several retries.
  * On total failure, write nothing and exit 0 so the workflow keeps the
    previously published data instead of overwriting it with an empty file.
"""

from scholarly import scholarly, ProxyGenerator
import json
import os
import time
from datetime import datetime

SCHOLAR_ID = os.environ.get("GOOGLE_SCHOLAR_ID", "zZ8lS-UAAAAJ")
DIRECT_ATTEMPTS = 2
PROXY_ATTEMPTS = 6


def fetch_author():
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
    # 1) Direct connection (no proxy).
    for i in range(DIRECT_ATTEMPTS):
        try:
            print(f"[direct] attempt {i + 1}/{DIRECT_ATTEMPTS} ...")
            return fetch_author()
        except Exception as e:  # noqa: BLE001 - scholarly raises many types
            print(f"[direct] failed: {type(e).__name__}: {e}")
            time.sleep(3)

    # 2) Free rotating proxies.
    for i in range(PROXY_ATTEMPTS):
        try:
            print(f"[proxy] attempt {i + 1}/{PROXY_ATTEMPTS} ...")
            if not enable_free_proxy():
                print("[proxy] no working free proxy this round")
                time.sleep(5)
                continue
            return fetch_author()
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
    author["publications"] = {v["author_pub_id"]: v for v in author["publications"]}

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
