---
title: "About Tamana"
description: "The purpose, current implementation, and source repositories for the Tamana project."
---

Tamana is a task-management project for bringing everyday responsibilities, deadlines, and priorities into one place. It is being developed as a semester project for CSC 640.

## What exists today

The Stage 1 local app uses Python, FastAPI, and SQLite with direct, parameterized SQL. A separate static demo is available through GitHub Pages and saves tasks in the visitor's browser-local storage. The demo does not connect to the local API or database.

SQLAlchemy, Pydantic, user accounts, and JWT authorization are proposed future work; they are not described as implemented features.

## Project links

- [Application source repository](https://github.com/tomboyloychoy/csc-640-task-management-app)
- [Static Pages demo](https://tomboyloychoy.github.io/csc-640-task-management-app/)
- [Documentation repository](https://github.com/tomboyloychoy/csc-640-tamana-documentation)

For installation and local run instructions, see [Setup and local development]({{< relref "setup" >}}). For current endpoint status, see the [API reference]({{< relref "api" >}}).
