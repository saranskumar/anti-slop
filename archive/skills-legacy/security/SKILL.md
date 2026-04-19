---
name: security
description: "Use this skill when implementing any feature that touches user data, auth, APIs, file uploads, pe..."
---

# Security Skill

Use this skill when implementing any feature that touches user data, auth, APIs, file uploads, permissions, or external integrations.
Also use it as a review pass before marking any feature done.

---

## When to activate this skill

- Adding a new API endpoint or route
- Implementing login, registration, or session management
- Adding file upload or user-generated content
- Changing permissions or access control
- Integrating a third-party service
- Pre-deployment review of any feature

---

## Security Review Process

### Step 1: Map the attack surface
- What inputs does this feature accept? (forms, query params, headers, file uploads, webhooks)
- What data does it read or write?
- Who is allowed to access it?
- What can go wrong if this is exploited?

### Step 2: Input security
- [ ] All inputs validated and typed before use
- [ ] File uploads: type-checked, size-limited, stored safely
- [ ] No raw user input passed to queries, eval, exec, or shell commands
- [ ] Query parameters are sanitized and typed

### Step 3: Auth + Authorization
- [ ] Endpoint requires authentication (not just UI guard)
- [ ] Endpoint checks authorization (right role/permission for this resource)
- [ ] Ownership is enforced — users can only access their own data unless explicitly authorized
- [ ] Admin-only routes are verified server-side, not just hidden in UI

### Step 4: Data exposure
- [ ] Response returns only what the caller is authorized to see
- [ ] No passwords, tokens, secrets, or internal IDs in responses
- [ ] Error messages don't expose stack traces, file paths, or DB structure

### Step 5: Transport + Environment
- [ ] Feature works only over HTTPS
- [ ] Secrets are in environment variables, not in code or logs
- [ ] CORS is configured correctly if this is a new endpoint

### Step 6: Dependency & audit check
- [ ] Any new library added does not have known critical CVEs
- [ ] Run `pnpm audit` (or stack equivalent) before release

---

## Output

- Security review notes (what was checked)
- Identified risks (if any)
- Fixes applied or recommended

---

## Rule

A feature without a security review is not done.
Security is not a separate phase — it is part of implementation.
