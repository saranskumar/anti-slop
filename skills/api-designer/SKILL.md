---
name: api-designer
description: Use when the team needs API routes, action contracts, request and response shapes, error handling, pagination, or webhook patterns for a backend or BFF. Trigger on requests to design APIs before implementation.
---

# Goal
Define APIs that clearly support product actions and client needs.

# When to Use
- Frontend and backend planning are converging.
- A feature needs endpoint or action design.
- Integrations, webhooks, or async jobs affect contract design.

# Instructions
1. Start from user actions and backend capabilities.
2. Define the minimal contract set for v1.
3. Specify payloads, validation needs, and error shapes.
4. Include auth requirements, pagination, filtering, and async status where needed.
5. Mark unstable contracts and assumptions.

# Constraints
- Do not leak internal table structure directly.
- Avoid generic endpoints with unclear business meaning.
- Keep contracts small and explicit.

# Output Format
- API inventory
- Request/response shapes
- Auth/error notes
- Async/webhook notes

# Examples
- "Design the API for report generation and export."
- "What endpoints do we need for invite-based workspaces?"
