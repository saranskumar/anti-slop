---
name: node-service-designer
description: Use this when designing or refining a Node.js backend service, daemon, worker, integration service, or internal runtime that is not just an Express route layer.
---

# Goal
Design Node.js services that separate runtime concerns from business logic and integration code.

# When to Use
- A Node.js backend process needs design.
- The system is service-oriented or integration-heavy.
- The project is not purely frontend despite sharing a JS/TS stack.

# Instructions
1. Define service purpose, consumers, and runtime behavior.
2. Separate startup code, handlers, domain logic, adapters, and config.
3. Plan errors, retries, shutdown, and operational visibility.
4. Note environment and dependency assumptions.

# Constraints
- Do not equate Node.js with Express only.
- Avoid hiding system behavior inside framework middleware chains.
- Keep runtime lifecycle explicit.

# Output Format
- service overview
- module and runtime structure
- operational notes
- risks

# Examples
- "Design a Node service for provider sync."
- "How should this Node daemon be structured?"
