---
name: thinking
description: Use before any complex or ambiguous task where the path forward is unclear. For breaking down multi-step problems, choosing between approaches, clarifying vague requirements, identifying hidden assumptions, planning before building, and preventing costly mistakes from starting in the wrong direction. Activate when user says "how should I approach this", "what's the best way to", "I'm not sure how to", or presents a problem without a clear solution.
---

# Thinking

The most expensive mistake in software is building the wrong thing correctly. This skill forces structured thinking before any implementation begins. Use it as a forcing function when the problem is fuzzy, the requirements are vague, or multiple approaches exist and the stakes of choosing wrong are high.

---

## When to Use This Skill

- You're about to start a task but the approach isn't obvious
- Requirements are ambiguous or incomplete
- Multiple valid implementations exist — you need to choose one
- The feature has downstream effects you haven't mapped
- You feel rushed and want to write code immediately (stop — think first)

---

## Step 1: Restate the Problem in Your Own Words

Before analyzing solutions, make sure you understand what's actually being asked.

```
"Build a notification system" 

→ Restated: "Users need to receive alerts when specific events happen.
   Right now, there's no email sending capability in the codebase.
   We need to: (1) detect events, (2) decide who to notify, (3) deliver the notification."
```

If you can't restate the problem simply, you don't understand it yet. Ask clarifying questions.

---

## Step 2: Identify What You Know vs. What You're Assuming

| Known (confirmed in requirements) | Assumed (needs validation) |
|-----------------------------------|---------------------------|
| Users have an email field | Emails are verified |
| Events are stored in DB | Events happen in real-time |
| Admin can configure notifications | Admin is a specific role |

Questions to resolve before building:
- What are the user/admin roles and their exact permissions?
- What events trigger notifications?
- Is this real-time or batch? (changes architecture significantly)
- Should failures be retried?

---

## Step 3: Map the Solution Options

For any non-trivial problem, at least 2–3 implementation approaches exist.

**Option A — Simple/Naive:** What's the fastest path to something that works?
- What are the constraints? (tech debt, future limitations)

**Option B — Robust/Scalable:** What's the production-grade approach?
- What does this cost now vs. later?

**Option C — Hybrid:** Start simple, upgrade the right parts later
- What's the migration path?

Evaluate each option on: complexity, reversibility, time, and fit with existing architecture.

---

## Step 4: Identify Hidden Risks

For every approach, ask:
- What happens when this fails?
- What happens when the data is wrong or missing?
- What happens at 10x the current load?
- Who else is affected if this changes?
- What is the migration path if we need to change this later?

---

## Step 5: Choose and Commit

After mapping options:
1. State your choice
2. State why (not "seems good" — cite the specific constraint it satisfies)
3. State what you're explicitly NOT doing and why
4. State any risks you're accepting

```
Decision: Option A (direct email via SendGrid)
Reason: 80% of notifications are transactional and low-volume (<100/day).
        Background queue would add operational complexity with no measurable benefit now.
Not doing: In-app notification system (out of scope for this milestone)
Risk: If volume increases 10x, we'll need a queue. Acceptable — easy to add later.
```

---

## Step 6: Write the Approach Before Writing Code

Before any implementation:

```markdown
## Approach

**Problem:** Users don't know when their long-running job completes
**Solution:** Email notification on job completion via Resend API
**Scope:** Only job completion for now, not failures (separate milestone)

**Files to create/change:**
- src/lib/email.ts — Resend client wrapper
- src/jobs/processor.ts — add sendNotification() call after job complete
- src/types/notifications.ts — JobCompletedEmail type

**Not touching:**
- Auth system
- Job scheduling
- Dashboard UI

**Done when:**
- Job completion triggers email to owner
- Email sends successfully (Resend API confirmed)
- Failing sends don't crash the job queue
```

---

## Rule

Thinking is not wasted time. Code written from a clear plan takes 30% of the time that code written from guessing does.
Vague requirements + immediate coding = guaranteed rework.
