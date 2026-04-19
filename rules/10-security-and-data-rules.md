# Security And Data Rules

- Never expose secrets or privileged credentials in client-side or untrusted execution contexts.
- Validate all external inputs at the trust boundary before they reach business logic.
- Keep trusted and untrusted execution contexts explicit in every architecture and implementation plan.
- Prefer least privilege, server-side verification, and database-backed access control.
- Keep auth and authorization separate: identity alone is not permission.
