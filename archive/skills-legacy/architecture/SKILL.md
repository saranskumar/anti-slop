---
name: architecture
description: Use when designing a new system, choosing between architectural patterns, planning how components will connect, evaluating scalability and reliability trade-offs, or reviewing an existing system for structural problems. For system design, service boundaries, database design, API structure, monolith vs microservices decisions, and architecture decision records (ADRs). Activate when user says "how should I structure this", "design the system", "is this architecture right", or "plan the backend".
---

# Architecture

Architecture is the set of decisions that are hardest to change later. Getting them wrong early costs orders of magnitude more than getting them right the first time. This skill forces you to reason through structure, boundaries, and trade-offs before committing to an approach.

---

## When to Activate

- Starting a new project or major feature
- Adding a new service or significant component
- An existing system is too slow, too tightly coupled, or too fragile
- A decision needs to be made that will affect multiple teams or systems
- Choosing between 2+ valid architectural approaches

---

## Step 1: Define the System Boundaries

Before anything else, define what's IN vs. OUT of scope.

```
System: User Authentication Service

IN scope:
- Login (email/password + OAuth)
- Session management (JWT + refresh tokens)
- Password reset flow
- Account lockout after failed attempts

OUT of scope (owned elsewhere):
- User profile data (profiles service)
- Permissions/RBAC (authorization service)
- Email delivery (notifications service)
```

---

## Step 2: Define the Quality Attributes

Every architecture is a set of trade-offs. What matters most for this system?

| Attribute | Priority | Constraint |
|-----------|----------|-----------|
| Availability | Critical | < 200ms p95, 99.9% uptime |
| Security | Critical | OWASP compliance, RLS enforced |
| Scalability | Medium | Handle 10x current load without rewrite |
| Simplicity | Medium | New developer productive in < 1 day |
| Cost | Low | Optimize only after scaling is needed |

Prioritizing everything means prioritizing nothing.

---

## Step 3: Data Model First

The data model outlives the code. Bad data models cause problems that no amount of good code can fix.

```sql
-- Define entities and relationships before writing any application code
-- Ask:
-- What are the core entities? (User, Order, Product)
-- What relationships exist? (1:1, 1:many, many:many)
-- What's the write/read ratio? (affects indexing strategy)
-- What queries will be most frequent? (affects schema design)

-- Example: designing for "users can have many orders"
users (id, email, created_at)
orders (id, user_id, status, total, created_at)  -- user_id FK, indexed
order_items (id, order_id, product_id, quantity, price)  -- order_id FK, indexed
```

---

## Step 4: API Contract Before Implementation

Define what the API looks like before implementing it.

```typescript
// Define the contract — not the implementation
// This can be a type definition, OpenAPI spec, or tRPC router

// POST /auth/login
type LoginRequest = { email: string; password: string };
type LoginResponse = { user: User } | { error: 'INVALID_CREDENTIALS' | 'ACCOUNT_LOCKED' };

// GET /users/:id
type GetUserResponse = { user: User } | { error: 'NOT_FOUND' | 'FORBIDDEN' };
```

Contract-first forces clarity on: what data flows in, what responses the client needs, and what error cases exist.

---

## Step 5: Choose Patterns Explicitly

Don't use a pattern because it's trendy. Use it because it solves a specific problem you have.

### When to use what:

**Monolith:** Default choice. Use until you have a proven reason to split.
- Works for: most startups, single-team projects, < 10M requests/day

**Service separation (not microservices):** Split only when:
- Two parts have clearly different scaling needs
- Two parts need to be deployed independently (different release cycles)
- Teams are large enough that integration overhead is worth it

**Event-driven / Queue:** Use when:
- Work takes > 100ms and shouldn't block the user
- Work could fail and needs retry logic
- Multiple consumers need the same event (fan-out)

**CQRS / Event Sourcing:** Use when:
- You need a full audit log (regulated industries)
- Read and write models are significantly different
- **Not** as a default — high operational complexity

---

## Step 6: Write the Architecture Decision Record (ADR)

Every significant decision gets an ADR. Format:

```markdown
## ADR-001: Use Supabase for Auth

**Status:** Accepted
**Date:** 2026-04-19

**Context:**
We need auth. Building custom JWT handling with refresh rotation is error-prone and security-critical. We have 2 devs, no dedicated security engineer.

**Decision:**
Use Supabase Auth with RLS. All auth logic lives in Supabase, not application code.

**Consequences:**
- ✅ Production-grade security out of the box
- ✅ Built-in OAuth providers (Google, GitHub)
- ✅ RLS at database layer — can't be bypassed by app bugs
- ⚠️ Vendor dependency on Supabase
- ⚠️ Migration to another provider would require significant effort

**Rejected alternatives:**
- Custom JWT (too risky, too much ongoing maintenance)
- Auth0 (higher cost at scale, more config overhead)
```

---

## Structures to Create

For any new system or major feature:
1. `docs/architecture.md` — system overview, components, data flow
2. `docs/decisions/ADR-NNN.md` — key decision records
3. `docs/api-contracts.md` — API shapes consumed by clients

---

## Output Checklist

- [ ] System boundaries defined — what's in, what's out
- [ ] Quality attributes prioritized (not everything is critical)
- [ ] Data model designed before any application code
- [ ] API contract defined before implementation
- [ ] Architectural pattern chosen with explicit justification
- [ ] ADR written for each significant decision
- [ ] Architecture docs updated in `docs/` folder

---

## Rule

The best architecture is the simplest one that meets your actual requirements today, with a clear upgrade path for tomorrow.
Complexity added before it's needed is debt borrowed against a future that may never come.
