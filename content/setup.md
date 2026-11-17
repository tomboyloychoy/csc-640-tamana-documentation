---
title: "Setup and local development"
description: "Run the Stage 1 FastAPI and SQLite application on your computer."
---

## Requirements

- Python 3.10 or newer
- Git, to clone the application repository
- PowerShell on Windows (or an equivalent terminal on another platform)

The application source is maintained in the [Tamana task-management app repository](https://github.com/tomboyloychoy/csc-640-task-management-app).

## Create an environment and run the app

From the application repository root, run:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install -r requirements.txt
python -m uvicorn app.main:app --reload
```

Open [http://127.0.0.1:8000](http://127.0.0.1:8000). The SQLite database is created automatically at `data/tamana.db` when the app starts. Stop the development server with `Ctrl+C`.

If PowerShell prevents environment activation, either enable script execution for your user according to your organization's policy or run the commands using a shell that supports virtual-environment activation. The app can also be started with the environment's Python directly:

```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m uvicorn app.main:app --reload
```

## Run tests

Install the development dependencies and run the test suite:

```powershell
python -m pip install -r requirements-dev.txt
python -m pytest
```

## Data and environment

The local API persists data in SQLite at `data/tamana.db`; keep local database files out of commits unless test evidence explicitly requires a fixture. The documented setup does not require API keys or extra environment variables. The GitHub Pages demo uses browser-local storage instead, so its data is private to that browser and is not synchronized with the API or another device.
