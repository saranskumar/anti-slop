---
name: express-api-designer
description: Use this when planning or refining an Express or Express-style Node.js API with route groups, middleware boundaries, validation, auth, error handling, and service layering.
---

# Goal
Design Express APIs that are explicit about validation, auth, and service boundaries.

# When to Use
- The API uses Express or a similar middleware-based Node server.
- Route structure and handler layering need design.
- Existing middleware chains are getting messy.

# Instructions
1. Define route groups and shared middleware concerns.
2. Separate validation, auth, handlers, and domain services.
3. Define error translation and response conventions.
4. Plan tests and operational instrumentation.

# Constraints
- Do not bury business logic in middleware.
- Keep request validation explicit.
- Avoid middleware stacks that hide security-critical behavior.

# Output Format
- route map
- middleware and service layering
- validation/auth notes
- implementation guidance

# Examples
- "Design an Express API for file processing."
- "How should this middleware-heavy API be cleaned up?"
