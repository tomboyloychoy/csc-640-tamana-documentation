---
title: "Architecture and features"
description: "A guide to the implemented Stage 1 components and the planned evolution."
---

## Stage 1 architecture

The project has two distinct ways to use Tamana:

1. **Local application:** a Python and FastAPI backend serves the application, handles API requests, and reads or writes a local SQLite database using direct, parameterized SQL.
2. **GitHub Pages demo:** a static browser interface runs without a backend and stores its tasks in the visitor's browser-local storage.

The Pages demo does not connect to FastAPI or SQLite. GitHub Pages serves static files and cannot run the Python backend.

## Features

- Create, edit, complete, and delete tasks
- Add optional notes, due dates, and priority levels
- Use built-in tags (School, Work, House, Personal, and Other) or enter a custom tag
- Filter by status or tag; search task names and notes; sort the current list
- Persist local API data in `data/tamana.db`
- Keep Pages demo data in browser-local storage, separate from the local database

## Code areas

| Area | Responsibility |
|---|---|
| `app/main.py` | FastAPI routes, validation, and direct SQLite queries |
| `frontend/` | Responsive browser interface and static demo |
| `tests/` | API and persistence behavior tests |
| `docs/` | Hugo project and API documentation in the application repository |

## Quality and planned evolution

The Stage 1 baseline is direct SQL with no user accounts or API authentication. The proposal identifies SQLAlchemy and Pydantic as Stage 2 tools for database operations and validation. Moving to those tools, adding JWT authentication, and supporting per-user task ownership are future work and require design and verification evidence.
