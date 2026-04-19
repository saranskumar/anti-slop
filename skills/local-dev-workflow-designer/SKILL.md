---
name: local-dev-workflow-designer
description: Use this when a project needs a better local development workflow for setup, running services, seeding data, testing integrations, or managing multi-service developer environments.
---

# Goal
Design local workflows that keep setup, iteration, and debugging manageable.

# When to Use
- Local setup is inconsistent or fragile.
- A project spans several services or runtimes.
- Developers need repeatable workflows for common tasks.

# Instructions
1. Identify common developer tasks and current friction.
2. Define setup, run, reset, seed, and debug workflows.
3. Clarify local-only config, dependencies, and service mocks.
4. Recommend scripts or tooling to reduce repeated manual steps.

# Constraints
- Do not hide dangerous production-affecting commands in local helpers.
- Keep onboarding and day-to-day workflows separate when useful.
- Avoid complex tooling if simpler scripts suffice.

# Output Format
- workflow summary
- common commands/tasks
- dependency and config notes
- tooling suggestions

# Examples
- "Design the local workflow for this Python plus Postgres service."
- "How should developers run this multi-service app locally?"
