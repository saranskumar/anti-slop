---
name: backend-architecture-planner
description: Plan backend domains, services, jobs, integrations, and failure handling for a product or major feature. Use when UX and product scope are defined and the team needs a production-minded backend design without defaulting to premature microservices.
---

# Goal
Turn product behavior into a backend architecture with clear responsibility boundaries.

# When to use
- Product workflows imply non-trivial business logic or integrations.
- A feature needs jobs, events, webhooks, or cross-domain coordination.
- The team needs to know what the backend owns versus the client.

# Instructions
1. Identify the backend domains implied by the product flow.
2. Define commands, reads, jobs, and integration points per domain.
3. Separate synchronous request handling from background work.
4. Call out idempotency, retry, and observability needs.
5. Recommend a modular monolith or service split with justification.

# Constraints
- Default to a modular monolith unless there is evidence against it.
- Keep business logic out of thin route handlers.
- Do not plan infrastructure without tying it to product behavior.

# Output format
- Domain map
- Backend responsibilities
- Jobs and events
- Integration points
- Failure and observability notes

# Examples
- "Plan the backend for a multi-step AI report generation product."
- "What services or modules do we need for this marketplace MVP?"

# Output expectations
The output should be specific enough to drive API, auth, and schema planning next.
