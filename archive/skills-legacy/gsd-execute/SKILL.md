---
name: gsd-execute
description: Use when implementing a planned feature, task, or phase. Enforces the GSD methodology: SPEC → PLAN → EXECUTE → VERIFY → COMMIT. No code is written without a finalized spec. Every task gets an atomic commit with empirical proof of completion.
---

# GSD Execute — Get Shit Done

Stop vibecoding. Start shipping. This skill enforces the methodology that makes AI coding reliable at scale: no guessing, no "it should work", no half-finished tasks.

**Core protocol:** `SPEC → PLAN → EXECUTE → VERIFY → COMMIT`

---

## The Problem This Solves

Without structure:
```
"Add a feature" → Inconsistent code → Bugs everywhere → Debug loop → Frustration
```

With GSD:
```
"Add a feature" → SPEC → Plan → Atomic execution → Verification → ✅ Done
```

---

## Step 1: SPEC First — No Exceptions

Before writing a single line of implementation code, the spec must exist and be finalized.

Create `.gsd/SPEC.md` with:
```markdown
# Feature: [Name]

## Status: DRAFT  ← must become FINALIZED before coding

## Problem
What problem does this solve? For whom?

## Requirements
- [ ] Requirement 1 (testable, specific)
- [ ] Requirement 2

## Out of Scope
- What we explicitly will NOT build

## Acceptance Criteria
- Given [context], when [action], then [outcome]
```

**Rule:** No implementation until `Status: FINALIZED`. This is not optional.

---

## Step 2: PLAN — Wave-Based Decomposition

Break the work into waves based on dependencies.

```markdown
## Wave 1 — Foundation (no dependencies, can run in parallel)
- Task A: Create database schema
- Task B: Set up API route structure
- Task C: Configure auth middleware

## Wave 2 — Integration (depends on Wave 1)
- Task D: Implement login endpoint (needs A + C)
- Task E: Build user profile API (needs A + B)

## Wave 3 — Polish (depends on Wave 2)
- Task F: Add error boundaries
- Task G: Write integration tests
```

Each task must be atomic — one thing, one file set, one commit.

---

## Step 3: EXECUTE — Precise XML Task Format

Each task is a structured prompt, not a vague instruction:

```xml
<task type="auto" effort="medium">
  <name>Create login endpoint</name>
  <files>src/app/api/auth/login/route.ts</files>
  <action>
    Create POST /api/auth/login endpoint.
    Accept {email, password} JSON body.
    Validate with Zod before touching business logic.
    Query User by email, compare password with bcrypt.
    Return JWT in httpOnly cookie on success.
    Return 401 with { error: "INVALID_CREDENTIALS" } on failure.
    AVOID: jsonwebtoken (CommonJS issues) — USE: jose
  </action>
  <verify>curl -X POST localhost:3000/api/auth/login -d '{"email":"test@test.com","password":"wrong"}' returns 401</verify>
  <done>Valid credentials return 200 + Set-Cookie header. Invalid return 401.</done>
</task>
```

**Effort levels:**
| Value | Use Case |
|-------|----------|
| `low` | Simple edits, config changes |
| `medium` | Standard implementation (default) |
| `high` | Complex logic, refactoring |
| `max` | Architecture decisions, security-critical |

---

## Step 4: VERIFY — Empirical Proof, Not Trust

Never accept "it looks correct" or "this should work." Every task requires captured evidence.

| Change Type | Required Proof |
|-------------|----------------|
| API endpoint | curl output showing status + response body |
| UI change | Screenshot of rendered component |
| Build/compile | Terminal output showing success |
| Test | Test runner output with pass count |
| Config change | Verification command + output |

```bash
# Example proofs
curl -X POST localhost:3000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"user@test.com","password":"valid"}' \
  -v 2>&1 | grep -E "< HTTP|Set-Cookie"
```

---

## Step 5: COMMIT — One Task, One Commit

```
feat(phase-1): create login endpoint
fix(phase-2): handle null user in profile query
refactor(auth): extract token validation to middleware
test(phase-1): add login endpoint integration tests
```

**Rules:**
- Verify BEFORE committing — never commit broken code
- One task = one commit — no "misc fixes" commits
- Scope = phase number for phase work

---

## State Management

After each wave, update `.gsd/STATE.md`:

```markdown
## Wave 1 Summary

**Objective:** Build auth foundation

**Changes:**
- Created users table migration
- Implemented login endpoint
- Set up JWT middleware

**Files Touched:**
- src/db/migrations/001_users.ts
- src/app/api/auth/login/route.ts

**Verification:**
- Login endpoint: curl returns 200 + cookie ✅

**Next Wave:**
- Build user profile API
- Add password reset flow
```

---

## Context Budget Rules

| Context Usage | Action |
|---------------|--------|
| 0–50% | Proceed normally |
| 50–70% | Compress context, reference STATE.md instead of re-reading files |
| 70%+ | State dump → fresh session with STATE.md as entry point |

**After 3 debugging failures in a row:** Stop. Dump state. Start fresh session.

---

## Search-First Discipline

Before reading any file in full:
1. Search first — `grep`, `ripgrep`, or IDE search
2. Evaluate snippets — is full file read needed?
3. Targeted read — only read specific sections

**Anti-pattern:** Reading entire files "to understand context" without searching first. This pollutes context with irrelevant code.

---

## Output Checklist

Before marking any task done:

- [ ] SPEC.md exists and is FINALIZED
- [ ] Task was planned before executed
- [ ] Implementation matches the `<action>` specification exactly
- [ ] Verification command was run and captured
- [ ] Commit made with correct type(scope): format
- [ ] STATE.md updated if wave is complete

---

## Rule

No code without a spec. No done without proof. No commit without verification.
One task. One commit. One truth.
