---
name: python-api-builder
description: Use this when designing or scaffolding a Python API service, endpoint structure, request validation approach, handler layout, or API-specific service patterns in FastAPI, Flask-style, or similar Python backends.
---

# Goal
Design Python APIs with clear endpoint structure, validation, service boundaries, and runtime safety.

# When to Use
- A Python API is being planned or refactored.
- Endpoint and handler organization are unclear.
- Request validation and service boundaries need definition.

# Instructions
1. Define API consumers, endpoint groups, and contracts.
2. Separate routing, validation, auth, service logic, and data access.
3. Choose framework patterns appropriate to the runtime.
4. Note error handling, tests, and deployment implications.

# Constraints
- Do not bury business logic in route decorators or handlers.
- Keep request and response validation explicit.
- Avoid framework-specific assumptions unless requested.

# Output Format
- endpoint structure
- handler/service layering
- validation/auth notes
- implementation guidance

# Examples
- "Design a FastAPI service for document processing."
- "How should this Flask API be organized?"
