---
title: "API reference and status"
description: "Current task and tag endpoints, alongside explicitly planned account endpoints."
---

The current task and tag routes provide functionality but are **unauthenticated**. `UserBearer` and `AdminBearer` below describe proposed authorization profiles only; bearer authentication is not implemented.

| # | Method | Path | Endpoint status | Authorization |
|---|---|---|---|---|
| 1 | `GET` | `/api/tasks` | Implemented | `UserBearer` — to be implemented |
| 2 | `POST` | `/api/tasks` | Implemented | `UserBearer` — to be implemented |
| 3 | `PUT` | `/api/tasks/{task_id}` | Implemented | `UserBearer` — to be implemented |
| 4 | `DELETE` | `/api/tasks/{task_id}` | Implemented | `UserBearer` — to be implemented |
| 5 | `GET` | `/api/tags` | Implemented | `UserBearer` — to be implemented |
| 6 | `POST` | `/api/auth/register` | To be implemented | Public |
| 7 | `POST` | `/api/auth/login` | To be implemented | Public; planned to return a `UserBearer` JWT |
| 8 | `GET` | `/api/users/me` | To be implemented | `UserBearer` |
| 9 | `PATCH` | `/api/users/me` | To be implemented | `UserBearer` |
| 10 | `GET` | `/api/admin/users` | To be implemented | `AdminBearer` |

