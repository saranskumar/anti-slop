# Security Rule

Security is a first-class concern, not an afterthought.
Check security at every layer: input, transport, auth, data, output, dependencies.

---

## OWASP Top 10 — Always Check

### 1. Injection (SQL, NoSQL, Command, LDAP)
- Never concatenate user input into queries — use parameterized queries or ORM
- Sanitize and validate all inputs before they reach any query layer
- Never eval() or exec() user-supplied strings

### 2. Broken Authentication
- Never implement custom auth from scratch unless unavoidable
- Tokens must expire. Always implement token refresh and revocation
- Enforce strong password requirements at the backend, not just UI
- Rate-limit login endpoints. Lock accounts after repeated failures

### 3. Sensitive Data Exposure
- Never log passwords, tokens, PII, or payment data
- Encrypt sensitive data at rest and in transit (TLS always)
- Never store secrets in code, comments, or git history
- Use environment variables for all secrets

### 4. XML/JSON External Entities (XXE)
- Disable external entity processing in XML parsers
- Validate and sanitize all file and document uploads

### 5. Broken Access Control
- Enforce permissions at the server/database layer — never trust client-side checks alone
- Every protected endpoint must verify identity AND authorization
- Apply principle of least privilege: users get minimum required access

### 6. Security Misconfiguration
- Remove default credentials, unused services, and sample data before shipping
- Disable directory listing and verbose error messages in production
- Review CORS settings — restrict origins, never use wildcard in production

### 7. Cross-Site Scripting (XSS)
- Never render raw user input as HTML — always escape or sanitize
- Use a CSP (Content Security Policy) header
- Avoid dangerouslySetInnerHTML or equivalent in any framework

### 8. Insecure Deserialization
- Never deserialize untrusted data without validation
- Validate object shapes before using deserialized data

### 9. Known Vulnerable Components
- Keep dependencies up to date
- Run `pnpm audit` (or your stack's equivalent) before every release
- Remove unused dependencies — they are attack surface

### 10. Insufficient Logging + Monitoring
- Log security events: failed logins, permission denials, unusual patterns
- Never log sensitive data in security logs
- Set up alerts for repeated auth failures or anomalous API access

---

## Always-On Security Checks

### Input
- [ ] All user input is validated server-side before use
- [ ] File uploads are type-checked, size-limited, and scanned if possible
- [ ] Query parameters are sanitized and typed

### Output
- [ ] Responses never include more data than the caller is authorized to see
- [ ] Error messages do not expose internal stack traces, file paths, or query structure
- [ ] HTML output is escaped

### Auth + Session
- [ ] Tokens have expiry
- [ ] Logout invalidates the session server-side
- [ ] Sensitive routes require re-authentication when appropriate

### API
- [ ] Every endpoint checks authentication AND authorization independently
- [ ] Rate limiting is applied to auth and sensitive endpoints
- [ ] CORS is configured correctly — no wildcard in production

### Data
- [ ] Secrets are in environment variables, never in code
- [ ] Database queries use parameterized/prepared statements or ORM
- [ ] Sensitive columns are encrypted where required

### Dependencies
- [ ] No packages with known critical CVEs in production
- [ ] `pnpm audit` (or stack equivalent) passes clean before release

---

## Security Review Trigger Points

Run a security check before:
- Shipping any new API endpoint
- Adding any file upload or user-generated content feature
- Changing auth or session handling
- Adding a new third-party library
- Deploying to production
