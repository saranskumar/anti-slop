---
name: serverless-function-builder
description: Use this when designing or scaffolding serverless functions for APIs, webhooks, background handlers, or small trusted services across cloud runtimes. Trigger on requests about serverless handlers, event functions, or function-level architecture.
---

# Goal
Design serverless functions that are focused, secure, and explicit about runtime constraints.

# When to Use
- The implementation target is a serverless runtime.
- A webhook, lightweight API, or event handler needs design.
- Cold start, execution time, or stateless behavior matter.

# Instructions
1. Define trigger, payload, caller, and trust boundary.
2. Separate validation, auth, business logic, and integration code.
3. Plan retries, idempotency, timeout behavior, and observability.
4. Keep deployment and environment assumptions explicit.

# Constraints
- Do not turn one function into a miniature monolith.
- Never expose privileged credentials to the client.
- Keep runtime limits visible in the design.

# Output Format
- function summary
- trigger and contract
- runtime and security notes
- scaffold guidance

# Examples
- "Plan a serverless webhook handler."
- "How should these event-driven functions be split?"
