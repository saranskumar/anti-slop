---
name: python-worker-designer
description: Use this when a Python worker, consumer, scheduled processor, or background execution service needs design or review. Trigger on requests about Python async jobs, consumers, schedulers, or long-running background processes.
---

# Goal
Design Python workers with clear job handling, retries, and operational behavior.

# When to Use
- Background work runs in Python.
- Queue consumers or schedulers need structure.
- Worker logic and package layout are unclear.

# Instructions
1. Define job sources, payloads, and success conditions.
2. Plan worker lifecycle, concurrency, retries, and idempotency.
3. Separate worker entrypoint, handlers, and shared domain logic.
4. Note environment, config, and observability requirements.

# Constraints
- Do not mix too many job types into one handler path.
- Keep job contracts explicit.
- Avoid hidden side effects without visibility.

# Output Format
- worker design
- handler structure
- retry and observability notes
- packaging guidance

# Examples
- "Design a Python worker for ingest pipelines."
- "How should this scheduled Python processor be organized?"
