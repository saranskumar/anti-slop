---
name: state-management-designer
description: Use when the team needs to decide how frontend state should be organized across React or Next.js apps. Trigger on requests about local state, global state, server cache, forms, optimistic updates, or choosing between context, stores, and query-based patterns.
---

# Goal
Design state boundaries that keep the frontend predictable and maintainable.

# When to Use
- A feature is becoming state-heavy.
- The app mixes server data, form state, and UI state.
- The team needs a state-management decision before coding.

# Instructions
1. Classify data as server state, client state, form state, or derived UI state.
2. Decide what belongs in component state, context, store, or query cache.
3. Define update patterns, invalidation rules, and optimistic behavior.
4. Note persistence needs, sync needs, and cross-route sharing.
5. Recommend conventions that fit the team's stack.

# Constraints
- Do not use global state by default.
- Do not store server cache in local stores unless there is a strong reason.
- Keep state ownership explicit.

# Output Format
- State classification
- Ownership map
- Update rules
- Tooling recommendation
- Risks

# Examples
- "Design state management for a collaborative editor."
- "Should this Next.js app use Zustand, context, or query state?"
