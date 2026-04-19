---
name: firebase-function-builder
description: Use when building or planning Firebase Cloud Functions for webhooks, backend APIs, scheduled jobs, claim assignment, or privileged Firestore logic. Trigger on requests to create or review Firebase Functions.
---

# Goal
Create focused Cloud Functions for trusted backend work in Firebase systems.

# When to Use
- The logic must run server-side in a Firebase stack.
- Auth-triggered, scheduled, webhook, or admin tasks are required.
- The client should not perform the privileged operation directly.

# Instructions
1. Define the trigger type and caller.
2. Separate validation, auth checks, business logic, and persistence.
3. Plan retries, idempotency, and logging.
4. Protect secrets and admin SDK usage carefully.
5. Align the function with Firestore rules and auth claims.

# Constraints
- Do not put long-running or unrelated workflows into one function.
- Never expose admin credentials or privileged endpoints publicly without verification.
- Keep function contracts explicit.

# Output Format
- Function summary
- Trigger/input/output
- Security notes
- Failure handling
- Scaffold direction

# Examples
- "Build a Firebase Function for Stripe webhooks."
- "Plan a scheduled cleanup function."
