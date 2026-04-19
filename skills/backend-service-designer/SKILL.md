---
name: backend-service-designer
description: Use this when the team needs to design or refine a backend service, API-facing domain module, internal service, or runtime-specific server component in Python, Node.js, or another backend environment.
---

# Goal
Design a backend service with clear boundaries, contracts, data ownership, and failure handling.

# When to Use
- A new backend capability is being introduced.
- Business logic needs a service-level design.
- An internal module or service is overloaded or unclear.

# Instructions
1. Define the service purpose, consumers, and owned responsibilities.
2. Separate validation, authorization, orchestration, and persistence.
3. Specify service inputs, outputs, and side effects.
4. Identify background work, retries, and observability needs.

# Constraints
- Do not blur service responsibilities with client concerns.
- Do not hide privileged work in thin request handlers.
- Keep interfaces explicit.

# Output Format
- service summary
- responsibilities
- inputs and outputs
- operational notes

# Examples
- "Design the backend service for invoice generation."
- "Refine this internal data-sync service boundary."
