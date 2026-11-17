---
title: "Deployment and automation"
description: "How the documentation is published and what is known about app deployment."
---

## GitHub Pages

This repository contains the Hugo documentation site. A GitHub Actions workflow builds it and deploys the generated static files to GitHub Pages when changes are pushed to `main`. Pull requests build the site as a check without publishing it.

After enabling GitHub Pages for this repository with **GitHub Actions** as the build and deployment source, the intended documentation URL is:

<https://tomboyloychoy.github.io/csc-640-tamana-documentation/>

The application repository separately publishes its static demo and its own Hugo documentation:

- [Tamana static demo](https://tomboyloychoy.github.io/csc-640-task-management-app/)
- [Application repository documentation](https://tomboyloychoy.github.io/csc-640-task-management-app/docs/)

## Local Hugo preview

Install [Hugo](https://gohugo.io/installation/) and check the installation with `hugo version`. In macOS or WSL2, run this from the documentation repository root:

```bash
./run.sh serve
```

The preview includes draft pages. Open the local URL printed by Hugo (normally `http://localhost:1313/`) and stop the server with `Ctrl+C`. Build the production site and check that all key pages were generated with:

```bash
./run.sh
```

The generated site is written to `public/`. On Windows PowerShell, run `hugo server -D` to preview and `hugo --minify` to build.

Add a new content page from the site root with `hugo new projects/my-api.md`. Hugo creates new pages as drafts; set `draft: false` in the front matter when the page is ready to publish. Store screenshots under `static/images/` and reference them from Markdown, for example `![API response](/images/my-api.png)`.

## Docker and application hosting

Docker is listed as a planned project tool; this repository does not currently include an application Dockerfile or container deployment configuration. GitHub Pages cannot host the Python/FastAPI and SQLite backend. To make the complete local application available online, it must be deployed to a Python-capable host with appropriate persistent storage for SQLite.

## CI/CD status

GitHub Actions automates the Hugo Pages build and deployment for this documentation repository. Do not interpret that workflow as deployment of the FastAPI backend. Add backend tests, container builds, or backend deployment only when those workflows are implemented in the application repository.
