---
name: api-contract-designer
description: Design API contracts from product flows and backend responsibilities. Use when the team needs resource models, action endpoints, request and response shapes, error handling, pagination rules, and contract clarity before implementation begins.
---

# Goal
Define stable contracts that let frontend and backend proceed with fewer assumptions.

# When to use
- Backend and frontend planning are converging.
- The team needs to agree on API boundaries and payload shapes.
- Errors, async processing, or streaming responses need design clarity.

# Instructions
1. Identify the user-facing actions and the backend capabilities that support them.
2. Define the minimal endpoints or RPC-style commands needed for v1.
3. Specify request, response, and error shapes in plain language or typed examples.
4. Include pagination, filtering, idempotency, and async status patterns where needed.
5. Mark contracts that are likely to evolve and why.

# Constraints
- Do not expose internal database structure directly as public API shape.
- Avoid generic endpoints that hide business intent.
- Keep v1 contracts as small as possible while supporting the product flow.

# Output format
- Contract inventory
- Example request and response shapes
- Error and async patterns
- Notes for frontend integration

# Examples
- "Design the API for report generation, history, and export."
- "What endpoints do we need for team invitations and approvals?"

# Output expectations
The contracts should reduce ambiguity enough for independent implementation work.
