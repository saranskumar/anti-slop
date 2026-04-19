# Environment And Config Rules

- Design for local, test, staging, and production explicitly when environment differences matter.
- Keep secrets in environment-specific secret stores or runtime configuration, never hardcoded in source.
- Separate developer config, deploy-time config, and runtime feature flags.
- Make external service dependencies and required credentials explicit.
- Prefer deterministic setup and reproducible developer environments.
