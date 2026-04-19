# Backend And Service Principles

- Separate request validation, authorization, business logic, and persistence.
- Use service boundaries to clarify ownership, not to create complexity for its own sake.
- Design APIs and jobs from real product and operator needs.
- Treat workers, queues, scheduled jobs, and webhooks as operational systems with retries, idempotency, and observability.
- Prefer language-agnostic design patterns first, then layer runtime-specific guidance as needed.
