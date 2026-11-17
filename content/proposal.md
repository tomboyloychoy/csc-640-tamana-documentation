---
title: "Project proposal"
description: "The problem Tamana addresses, its proposed solution, and the semester's technical direction."
---

## Problem

People balance work, school, and household responsibilities. When tasks, deadlines, and priorities are tracked in different places, it is easy to forget something or lose sight of what needs attention.

## Proposed solution

Tamana is a task-management app that keeps tasks and projects together. Users can organize tasks by category, set deadlines and priorities, update task status, and track progress.

## Project stages

| Stage | Direction | Status |
|---|---|---|
| Stage 1 | Python, FastAPI, SQLite, and direct SQL queries | Working baseline |
| Stage 2 | FastAPI with SQLAlchemy ORM and Pydantic validation | Planned evolution |

Stage 2 is a planned direction, not a claim that the migration is complete. Changes should be supported by quality criteria, verification evidence, and documented design decisions.

## Planned project tools

- **Docker** for containerization
- **GitHub** for version control and collaboration
- **GitHub Actions** for automation and CI/CD
- **Hugo** for project documentation
- **Marp** for presentation slides

The original [Marp proposal source](https://github.com/tomboyloychoy/csc-640-tamana-documentation/blob/main/project-proposal.md) is kept at the repository root. To export it after installing Marp CLI, run `marp project-proposal.md --pdf --output project-proposal.pdf`.
