---
name: api-integration-helper
description: Use this when frontend or service code needs help integrating with an API, provider, or internal backend contract. Trigger on requests about request flow, response handling, auth propagation, retries, or client-side integration patterns.
---

# Goal
Plan safe and maintainable integration with APIs and service contracts.

# When to Use
- A frontend or service is consuming an API.
- Auth headers, retries, or error handling are unclear.
- The team needs to bridge a contract into application code.

# Instructions
1. Define the caller, target API, auth context, and expected responses.
2. Plan request shaping, error translation, and retry behavior.
3. Clarify caching, invalidation, or sync expectations.
4. Flag trust-boundary or secret-handling risks.

# Constraints
- Do not put privileged credentials in untrusted callers.
- Keep integration helpers separate from domain logic where possible.
- Treat provider failures explicitly.

# Output Format
- integration summary
- request/response handling
- auth and retry notes
- implementation guidance

# Examples
- "Help integrate this frontend with our backend API."
- "How should this service call Stripe safely?"
