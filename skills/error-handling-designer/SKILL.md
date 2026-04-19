---
name: error-handling-designer
description: Use when the team needs a strategy for validation errors, API failures, job retries, user-facing error UX, observability, or recovery behavior. Trigger on requests to design error handling across frontend, backend, and integrations.
---

# Goal
Design failure behavior so users can recover and operators can diagnose issues.

# When to Use
- A system spans multiple failure points.
- UX for failure or retry is unclear.
- Jobs, integrations, or AI calls can fail independently.

# Instructions
1. Enumerate failure classes: validation, auth, network, provider, data, and operator error.
2. Decide what the user sees, what is retried, and what is logged.
3. Define typed backend errors and client-facing messages.
4. Plan retry, dead-letter, and escalation behavior for async work.
5. Tie error handling to observability and supportability.

# Constraints
- Do not leak sensitive internals to end users.
- Do not rely only on generic toast messages for complex failures.
- Treat silent failure as a bug.

# Output Format
- Failure taxonomy
- User-facing behavior
- System behavior
- Retry/logging notes

# Examples
- "Design error handling for uploads and AI processing."
- "How should this app surface provider failures?"
