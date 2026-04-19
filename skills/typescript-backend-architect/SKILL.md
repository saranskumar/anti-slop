---
name: typescript-backend-architect
description: Use this when the backend is TypeScript-first and needs architecture for services, APIs, workers, serverless handlers, validation boundaries, and runtime-aware module design.
---

# Goal
Design TypeScript backend systems with clear runtime boundaries and explicit validation.

# When to Use
- The backend is built in TypeScript.
- A service or server application needs structural guidance.
- Runtime validation and module boundaries matter.

# Instructions
1. Identify the runtime model: long-lived service, job worker, serverless, or mixed.
2. Separate handlers, domain logic, adapters, and config.
3. Keep compile-time types and runtime validation distinct.
4. Plan testing, build, and deployment implications.

# Constraints
- Do not assume type declarations replace runtime validation.
- Keep framework glue thin.
- Make runtime and environment assumptions explicit.

# Output Format
- architecture summary
- module boundaries
- validation strategy
- runtime notes

# Examples
- "Design the TypeScript backend for this admin platform."
- "How should this TS worker plus API project be structured?"
