# Quality And Operations Principles

- Test the highest-risk paths first: auth, data mutation, payments, jobs, and integrations.
- Prefer observable systems over silent failure.
- Make error handling user-recoverable and operator-visible.
- Review migration safety before changing live schemas or configuration.
- Performance work should start with bottlenecks and evidence, not guesswork.
