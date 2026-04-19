# Runtime And Environment Patterns

## Python
- Use packages and modules to separate CLI entrypoints, APIs, workers, and reusable domain logic.
- Keep automation scripts deterministic, composable, and environment-aware.

## JavaScript and TypeScript
- Keep runtime validation explicit at external boundaries.
- Do not let framework conventions replace architecture decisions.

## Serverless and cloud-connected systems
- Keep execution time, cold start, secrets handling, and retry semantics explicit.
- Move privileged logic to trusted server-side runtimes.

## Multi-environment development
- Define what differs across local, CI, staging, and production.
- Keep environment configuration reviewable and reproducible.
