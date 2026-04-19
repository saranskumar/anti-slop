---
name: frontend-architecture-planner
description: Use when the team needs route structure, feature modules, design-system boundaries, and frontend responsibilities for a React, Next.js, or Tailwind application. Trigger on requests about frontend architecture, app structure, pages, modules, or client-side delivery planning.
---

# Goal
Create a maintainable frontend structure aligned with screens, data flow, and product scope.

# When to Use
- Flows and screens are known.
- The app needs route and module planning.
- A frontend team needs a buildable structure before implementation.

# Instructions
1. Define app shells, routes, nested segments, and feature areas.
2. Separate reusable UI primitives from feature-specific modules.
3. Identify client state, server state, form state, and ephemeral UI state.
4. Plan loading, auth-gated, and error boundaries.
5. Recommend a delivery sequence that proves the core loop early.

# Constraints
- Keep backend logic out of the client plan.
- Avoid overbuilding a component library for v1.
- Align routes with user journeys, not technical folders alone.

# Output Format
- Route map
- Module map
- State boundaries
- Shared UI/system notes
- Delivery sequence

# Examples
- "Plan the frontend architecture for a Next.js SaaS."
- "How should we structure this React app by features?"
