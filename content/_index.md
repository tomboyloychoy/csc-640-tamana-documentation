---
title: "Tamana"
description: "A task-management app for bringing everyday responsibilities, deadlines, and priorities into one place."
---

## Why Tamana?

Work, school, and household responsibilities are easy to lose track of when tasks and deadlines live in different places. Tamana gives people one place to organize tasks, set due dates and priorities, and see what needs attention.

## Project guide

- [**About Tamana**]({{< relref "about" >}}) — project purpose, links, and implementation status.
- [**Project proposal**]({{< relref "proposal" >}}) — the problem, solution, project stages, and planned tools.
- [**Setup instructions**]({{< relref "setup" >}}) — create the Python environment and run the local app.
- [**Architecture and features**]({{< relref "architecture" >}}) — how the current app is organized and what is implemented.
- [**API status**]({{< relref "api" >}}) — implemented endpoints and clearly marked future authentication work.
- [**Deployment and automation**]({{< relref "deployment" >}}) — GitHub Pages, Docker, and CI/CD notes.
- [**Progress and evidence**]({{< relref "progress" >}}) — semester milestones and a place for course evidence.
- [**Peer review**]({{< relref "peer-review" >}}) — assigned peer feedback and response tracking.

## Current project

The Stage 1 application uses Python, FastAPI, and SQLite with direct, parameterized SQL. A separate static demo is published with GitHub Pages; it stores tasks in the visitor's browser and does not share data with the local API. The proposed next stage evaluates SQLAlchemy and Pydantic. User accounts and JWT authorization remain planned, not implemented.
