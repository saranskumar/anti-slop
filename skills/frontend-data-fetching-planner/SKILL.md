---
name: frontend-data-fetching-planner
description: Use this when a frontend feature needs a clear plan for server data fetching, caching, invalidation, mutations, optimistic UI, or auth-aware data loading.
---

# Goal
Design frontend data fetching that respects user flows, auth state, and backend contracts.

# When to Use
- A feature depends on server data.
- The team needs to choose fetch timing and cache behavior.
- Loading, mutation, and refresh strategy are unclear.

# Instructions
1. Identify the data needed per screen and interaction.
2. Define fetch timing, mutation flow, and refresh/invalidation behavior.
3. Note auth-gated and permission-sensitive loading.
4. Clarify where optimistic UI is safe and where it is not.

# Constraints
- Do not hide backend correctness issues behind optimistic UI.
- Keep server state and local UI state conceptually separate.
- Avoid framework-specific advice unless the stack is known.

# Output Format
- data dependency map
- fetch and mutation strategy
- cache/invalidation notes
- risks

# Examples
- "Plan data fetching for this React dashboard."
- "How should this frontend load and refresh team settings?"
