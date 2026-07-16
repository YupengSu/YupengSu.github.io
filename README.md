# CV (RenderCV source)

This branch holds the source for my CV, built with [RenderCV](https://rendercv.com) (v2.8, `classic` theme).

## How to update

1. Edit **`cv-source/Yupeng_Su_CV.yaml`** on this `cv` branch.
2. Commit & push.
3. The **Render CV** GitHub Action then:
   - renders the PDF/HTML/PNG into `cv-source/rendercv_output/`, and
   - copies the PDF to **`cv/personal-cv.pdf` on `main`** — the file linked from
     [yupengsu.github.io](https://yupengsu.github.io).

You can also trigger it manually: **Actions → Render CV → Run workflow**.

## Local preview (optional)

```bash
pip install "rendercv[full]"
cd cv-source
rendercv render Yupeng_Su_CV.yaml   # outputs to rendercv_output/
```
