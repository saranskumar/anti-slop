---
name: background-task-designer
description: Use this when the system needs scheduled tasks, cron-style jobs, periodic maintenance, sync loops, cleanup tasks, or non-interactive background automation that is not simply an API request or queue worker.
---

# Goal
Design scheduled and non-interactive background tasks with safe execution behavior.

# When to Use
- The work is periodic, maintenance-oriented, or automated on a schedule.
- A sync, cleanup, or reconciliation loop needs design.
- The task has no direct user request driving it.

# Instructions
1. Define trigger cadence, source of truth, and success condition.
2. Plan locking, overlap prevention, and idempotency.
3. Define failure visibility, escalation, and audit notes.
4. Clarify environment and credential needs.

# Constraints
- Do not let scheduled work silently mutate critical data without visibility.
- Avoid overlapping runs when work is not reentrant.
- Make source-of-truth decisions explicit.

# Output Format
- task summary
- schedule and guardrails
- failure handling
- operational review notes

# Examples
- "Design a nightly reconciliation task."
- "Plan a periodic cleanup job for expired data."
