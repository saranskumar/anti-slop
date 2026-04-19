---
name: worker-job-designer
description: Use this when background workers or job processors need design or review. Trigger on requests about asynchronous processing, job payloads, retries, scheduling, worker ownership, or long-running tasks outside the request path.
---

# Goal
Design workers that process background jobs safely and predictably.

# When to Use
- Work should not happen in the request-response path.
- The system needs retries, delayed jobs, or asynchronous execution.
- A worker or scheduled processor needs structural review.

# Instructions
1. Define the job trigger, payload, and success condition.
2. Design idempotency, retries, backoff, and failure visibility.
3. Clarify worker responsibilities, dependencies, and environment needs.
4. Define what the producer guarantees and what the worker validates.

# Constraints
- Do not overload one worker with unrelated jobs.
- Do not rely on at-most-once assumptions.
- Keep job payloads explicit and versionable.

# Output Format
- worker purpose
- job contract
- retry and idempotency plan
- monitoring notes

# Examples
- "Design a worker for report generation."
- "How should this email queue processor be structured?"
