# Tamana project documentation

This repository contains the Hugo documentation site for the Tamana CSC 640 semester project. It documents the project proposal, local setup, architecture and features, API implementation status, deployment notes, semester progress, and peer review.

## Preview and build the site

Install Hugo and check the installation with `hugo version`. In macOS or WSL2, run the helper script from the repository root to preview drafts or build and check the publishable pages:

```bash
chmod +x run.sh
./run.sh serve
./run.sh
```

`./run.sh` is equivalent to `./run.sh build`. On Windows PowerShell, use Hugo directly:

```powershell
hugo server -D
hugo --minify
```

The preview is at `http://localhost:1313/`; the build writes the generated site to `public/`.

## Add project documentation

Create a page from the repository root with:

```bash
hugo new projects/my-api.md
```

Review the generated front matter and set `draft: false` when the page is ready to publish. Put screenshots in `static/images/` and reference them in Markdown, for example `![API response](/images/my-api.png)`.

## Publish

The GitHub Actions workflow in `.github/workflows/pages.yml` builds the site on pull requests and deploys it to GitHub Pages after pushes to `main`. In the repository settings, enable **Pages** and select **GitHub Actions** as the deployment source.

## Marp proposal slides

The original Marp proposal source is [`project-proposal.md`](./project-proposal.md). Install Marp CLI with `npm install --global @marp-team/marp-cli`, then export a PDF with:

```powershell
marp project-proposal.md --pdf --output project-proposal.pdf
```

## Application

The Stage 1 application is maintained in the [Tamana task-management app repository](https://github.com/tomboyloychoy/csc-640-task-management-app). Its local API uses FastAPI and SQLite; its GitHub Pages demo is static and saves data in browser-local storage.
