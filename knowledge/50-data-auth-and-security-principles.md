# Data, Auth, And Security Principles

- Model data ownership, tenancy, and access patterns before choosing access-control mechanisms.
- Keep auth design grounded in actors, permissions, and trusted execution contexts.
- Use database or backend enforcement for authorization, not frontend hints.
- Keep service-role and admin-level credentials limited to trusted runtimes.
- Treat storage, files, webhooks, and integration callbacks as hostile inputs until verified.
