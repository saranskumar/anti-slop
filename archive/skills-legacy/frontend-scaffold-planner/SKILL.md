---
name: frontend-scaffold-planner
description: Plan the frontend application structure for a product or feature. Use when the team needs route structure, feature modules, state boundaries, design-system needs, and frontend delivery sequencing based on defined screens and flows.
---

# Goal
Produce an implementation-minded frontend plan that respects UX structure and engineering maintainability.

# When to use
- Screens and flows are known.
- Frontend work needs to be broken into modules, routes, and shared patterns.
- The team wants a build plan without prematurely writing components.

# Instructions
1. Group the experience into routes, shells, feature modules, and shared primitives.
2. Separate server state, client state, form state, and ephemeral UI state.
3. Identify the component patterns that should be standardized early.
4. Note where optimistic UI, background refresh, uploads, or AI streaming affect the client design.
5. Provide a frontend milestone order that proves the core loop early.

# Constraints
- Do not collapse backend concerns into frontend planning.
- Do not recommend a massive component library for an unvalidated MVP.
- Keep route count aligned with the screen plan.

# Output format
- Route map
- Feature module map
- State responsibilities
- Shared UI primitives
- Frontend implementation sequence

# Examples
- "Plan the frontend structure for this analytics SaaS."
- "How should we organize screens and modules for this AI workspace?"

# Output expectations
The plan should let a frontend engineer start confidently without guessing app boundaries.
