# Auth + Security Rule

This rule is stack-agnostic. Apply it regardless of your auth provider or backend.

---

## Auth Principles

- Never roll custom auth from scratch. Use a proven auth system (Supabase Auth, Auth.js, Clerk, Firebase Auth, Passport, etc.)
- Always define and enforce roles: at minimum `admin / user / guest`
- Role checks on the frontend are **UX only** — never a security boundary
- Role enforcement happens **server-side** — middleware, row policies, or access control layers
- Sessions and tokens must have expiry. Implement refresh and revocation

## API Security (stack-agnostic)

- Never trust frontend data. Validate everything server-side at the handler level
- Every protected endpoint independently verifies: authentication (who are you?) AND authorization (are you allowed?)
- Apply Row-Level Security or equivalent data-layer access control wherever your backend supports it
- Rate-limit all auth endpoints (login, password reset, token refresh)

## Secrets + Environment

- Strict environment separation: dev / staging / prod — never share secrets across envs
- Never expose server-side secrets to any client-facing code
- Use `.env.local` or equivalent for local dev — never commit `.env` files to git
- Rotate secrets immediately if they are ever exposed

## HTTPS + Transport

- Enforce HTTPS everywhere, including development tunnels
- Set `Secure` and `HttpOnly` flags on cookies
- Configure HSTS headers in production

## CORS

- Never use wildcard `*` in production CORS settings
- Restrict allowed origins to your actual domains
- Review CORS configuration whenever adding new frontends or subdomains

## Rule
Security is not an afterthought. Enforce it at the data layer, not just the UI.
If a feature ships without server-side auth checks, it is not done.
