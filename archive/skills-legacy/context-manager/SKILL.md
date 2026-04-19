---
name: context-manager
description: Use when context window is filling up, sessions are getting slow, or you need to preserve state across sessions. For context compression, state snapshots, search-first discipline, and cross-session memory management.
---

# Context Manager

Context is the most limited resource in AI-assisted development. Most sessions fail not because of bad code, but because of bloated, polluted context that degrades output quality. This skill teaches you to manage it deliberately.

---

## When to Activate This Skill

- Context usage is above 50% and output quality is degrading
- Starting a new session on an existing project
- Before executing a multi-wave plan
- After 3 consecutive debugging failures
- Any time you feel the AI is "forgetting" earlier decisions

---

## Context Quality Thresholds

| Usage | Quality | Action |
|-------|---------|--------|
| 0–30% | **PEAK** — Comprehensive, thorough | Work freely |
| 30–50% | **GOOD** — Confident output | Continue normally |
| 50–70% | **DEGRADING** — Efficiency mode | Compress, use summaries |
| 70%+ | **POOR** — Rushed, incomplete | State dump, fresh session |

**Rule:** Plans should complete within 50% context. If they can't, the plan is too large — split it.

---

## Search-First Discipline

Before reading ANY file in full, search first.

```bash
# PowerShell
Select-String -Path "src/**/*.ts" -Pattern "getUserById" -Recurse

# Bash / ripgrep (preferred)
rg "getUserById" src/

# Find files by name
fd "auth" src/ --type f
```

**Workflow:**
1. Define the question — what exactly are you looking for?
2. Search — find the relevant snippet
3. Evaluate — does the snippet answer the question?
4. Targeted read — only read the specific lines needed, not the whole file

**Anti-patterns that destroy context:**
- Reading entire files "to understand the context"
- Loading 10 files before writing a single line
- Re-reading files that were already understood earlier in the session

---

## State Preservation — STATE.md

`STATE.md` is your memory across sessions. Everything important that would be lost when context resets goes here.

**Template:**
```markdown
# Project State

## Current Position
- Phase: 2
- Wave: Wave 2, Task 3 of 5
- Last completed: Login endpoint (verified ✅)
- Blocked on: Database migration (pending review)

## Active Decisions
- Auth: Using jose (not jsonwebtoken) — CommonJS issue
- DB: Drizzle ORM (not Prisma) — team preference
- API: No /api prefix on routes — handled by client

## Files I Know
- src/lib/auth.ts — JWT helpers, see getUserFromToken()
- src/db/schema.ts — all table definitions
- src/app/api/auth/login/route.ts — login handler (complete)

## Open Questions
- [ ] Should password reset use email or SMS?
- [ ] Rate limit: 5 req/min or 10?

## Next Actions
1. Implement user profile GET /profile
2. Add rate limiting to auth endpoints
3. Write integration tests for auth flow
```

---

## Compression Protocol

When context is > 50%:

1. **Summarize what you know** — don't re-read, write a 3-line summary of each file
2. **Save to STATE.md** — make it the entry point for the next session
3. **Reference, don't reload** — "as documented in STATE.md, auth uses jose" instead of re-reading auth.ts

**Per-file compression:**
```
# Instead of:
Read entire auth.ts (200 lines) again

# Do:
"auth.ts exports: getUserFromToken(jwt) → User | null, createToken(user) → string, 
middleware validateAuth(req) → 401 if invalid"
```

---

## Fresh Session Protocol

When starting a new session on an existing project:

1. Read `STATE.md` — not the entire codebase
2. Read `SPEC.md` — confirm what's in scope
3. Read `ROADMAP.md` — confirm current phase/wave
4. Search for the specific files relevant to today's task
5. Start working — don't pre-load everything "just in case"

**What not to do on session start:**
- Reading every file in `src/`
- Re-reading documentation already summarized in STATE.md
- Loading files from previous phases that are already complete

---

## After 3 Debugging Failures

Stop. Do not try a 4th approach in the same session.

1. Write a state dump:
```markdown
## Debug Failure Summary

**Problem:** [exact error message]
**Attempted:**
1. Approach A → Result: [what happened]
2. Approach B → Result: [what happened]  
3. Approach C → Result: [what happened]

**Context at failure:**
- [Relevant file state]
- [Relevant config]

**Hypothesis for fresh session:**
- [Best guess at root cause]
```
2. Save to STATE.md
3. Start a fresh session — lead with the debug failure summary

---

## Token Loading Rules

| Situation | Rule |
|-----------|------|
| Before reading a file | Search first — don't assume you need the full file |
| File > 200 lines | Read outline/structure first, then specific sections |
| File already read this session | Reference your summary, don't reload |
| More than 5 files needed | Stop — reconsider the approach, it's too broad |

---

## Output Checklist

- [ ] Context usage checked before starting major work
- [ ] STATE.md is up to date with current position
- [ ] Files were searched before fully read
- [ ] Summaries saved for files read this session
- [ ] Session state captured before closing

---

## Rule

Context is finite. Every file you load is a token you won't have later.
Load deliberately. Summarize aggressively. Resume from STATE.md, not from memory.
