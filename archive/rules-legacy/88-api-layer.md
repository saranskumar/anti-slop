# API Layer Rule

This rule is stack-agnostic. Apply it regardless of your API style or backend framework.

---

## Consistency

- Pick ONE API style per project: REST, GraphQL, tRPC, RPC, etc. Don't mix styles.
- Be consistent with naming, structure, and error handling across all endpoints

## Standard Response Contract

Every API response must follow a consistent shape. Agree on one and enforce it everywhere.

Example (adapt to your stack's conventions):
```json
{
  "success": true,
  "data": {},
  "error": null
}
```

On error:
```json
{
  "success": false,
  "data": null,
  "error": {
    "code": "MACHINE_READABLE_CODE",
    "message": "Human-readable description"
  }
}
```

GraphQL/tRPC projects: use their native error patterns, but keep them consistent.

## Error Handling

- Handle errors explicitly at every endpoint — never swallow them silently
- Return structured, machine-readable error codes — not generic 500s with no context
- Log errors with enough context to debug: endpoint, user id, input shape (not values), error message

## Security (always apply)

- Every endpoint checks authentication AND authorization independently
- Never return more data than the caller is authorized to see
- Validate all request inputs before processing — never trust raw request data

## Rule

If an endpoint does not return a consistent shape, it is incomplete.
If an endpoint does not check auth, it is insecure.
Fix both before shipping.
