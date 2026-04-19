---
name: auth
description: "Use when implementing login, registration, session handling, protected routes, or role-based access."
---

# Auth Skill

Use when implementing login, registration, session handling, protected routes, or role-based access.
This skill is stack-agnostic — adapt patterns to your project's auth system.

---

## Identify First
Before building, identify:
- What auth system does this project use? (Supabase Auth, Auth.js, Clerk, Firebase Auth, Passport, custom JWT, session-based, OAuth, etc.)
- What roles exist in the system? (admin / user / guest at minimum)
- Where is authorization enforced? (middleware, database policies, service layer)

## Process

1. Use the project's established auth system — never roll custom auth unless unavoidable
2. Define roles clearly before implementing any access control
3. Protect routes/endpoints at the correct layer (middleware, handler, DB policy)
4. Enforce authorization server-side — verify identity AND permission, not just identity
5. Mirror role checks on the frontend for UX only — never as a security boundary

## Security checklist

- [ ] Auth token/session has expiry
- [ ] Logout invalidates the session server-side (not just client-side)
- [ ] Protected routes/endpoints are verified independently — not inherited from UI guards
- [ ] Ownership is checked: user can only access their own resources unless explicitly allowed
- [ ] Admin routes verify role at the handler level, not just behind a UI flag
- [ ] Rate limiting applied to login, registration, and password reset endpoints
- [ ] Errors do not reveal whether an email/username exists (timing + messaging)

## Output

- Auth middleware or guard implementation
- Role-based access control (server-side)
- Frontend route protection (UX layer)
- Session/token management

## Rule

If a route is protected only in the UI, it is not protected.
Authorization must be enforced at the handler or data layer.
