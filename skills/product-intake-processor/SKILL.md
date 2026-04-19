---
name: product-intake-processor
description: Use this when the user gives a broad app, system, service, tool, or feature request and it must be converted into structured implementation requirements, runtime assumptions, security concerns, likely components, and handoff tasks for developer or designer skills.
---

# Goal
Convert a broad request into build-ready implementation requirements.

# When to Use
- The request is broad and spans several engineering concerns.
- The stack or runtime is not yet explicit.
- The next step is routing into specialist skills, not ideation.

# Instructions
1. Restate the request as a build problem, not a startup idea.
2. Extract purpose, likely features, runtime needs, data needs, security needs, environment needs, and integration needs.
3. Identify which specialist skills should handle the next steps.
4. Flag assumptions and unknowns explicitly.

# Constraints
- Do not expand into product brainstorming.
- Do not create multiple competing visions.
- Keep the output implementation-oriented.

# Output Format
- purpose
- likely functionality
- runtime and environment assumptions
- data and auth needs
- security concerns
- specialist skill handoff plan

# Examples
- "Build a dashboard app with auth and background jobs."
- "Create a Python service for report generation."
