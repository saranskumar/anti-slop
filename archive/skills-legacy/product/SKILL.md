---
name: product
description: Use when defining a feature's purpose and user value before building it, writing user stories, mapping user flows end-to-end, prioritizing what to build next, evaluating whether a feature solves a real problem, or reviewing scope to prevent over-engineering. Activate when user says "what should I build", "plan the feature", "is this the right approach", "define the requirements", or presents an idea without a clear user need.
---

# Product Thinking

Features don't exist to display technical skill. They exist to solve problems for real people. Building the wrong thing correctly is worse than not building at all — it wastes time, creates maintenance debt, and solves nobody's problem.

---

## When to Activate

- About to start a new feature but the user value isn't clearly articulated
- Requirements are described as technical tasks rather than user problems
- Scope is unclear — "add notifications" without specifying what, when, for whom
- Multiple features are competing for the same dev time
- Someone said "it would be cool if..." and you want to evaluate whether it's worth building

---

## Step 1: Define the User and the Problem

The most important question: **Who has this problem, and why does it matter to them?**

```
❌ Weak: "Add email notifications"
✅ Strong: "Users who run long jobs (>2 min) don't know when they're done. 
           They leave the tab open, refreshing manually. 
           We lose them to frustration before the result is ready."
```

If you can't name:
- **Who** has the problem
- **What** their current behavior is
- **Why** it's painful

...the feature isn't defined well enough to build.

---

## Step 2: Write the User Story

Standard format, used by thousands of teams because it works:

```
As a [type of user],
I want to [action/capability],
So that [outcome/benefit].

Example:
As a data analyst running batch jobs,
I want to receive an email when my job completes,
So that I can move on to other work without watching the browser tab.
```

---

## Step 3: Define "Done" Before You Start

What does success look like? Write acceptance criteria in Given/When/Then:

```
Feature: Job completion notification

Given I am a logged-in user with a verified email
When a job I started completes successfully
Then I receive an email within 30 seconds with the job name and a link to results

Given the same condition
When the job fails
Then I receive an email with the failure reason and a link to retry

Out of scope for this milestone:
- In-app notifications
- SMS
- Notification preferences (always on for now)
```

---

## Step 4: Map the User Flow End-to-End

Don't design screens. Design the user's journey.

```
1. User starts a batch job (existing)
2. Job runs in background (existing)
3. [NEW] Job completion fires an event
4. [NEW] System sends email via Resend
5. User receives email
6. User clicks link → lands on results page (existing page, existing route)
```

This surfaces what already exists, what's new, and what integration points are needed.

---

## Step 5: Scope and Priority

For every feature, explicitly answer:

**Build now?**
- Does this solve a confirmed user pain point, or is it hypothetical?
- Do we have proof users want this? (complaints, support tickets, churn reasons)
- What's the cost of not building it?

**MVP vs. Full:**
| MVP (ship now) | Full version (later if needed) |
|----------------|-------------------------------|
| Email only | In-app + email + SMS |
| Always sends | User-configurable preferences |
| Plain text email | Branded HTML template |

Start with MVP. Add complexity only when the MVP proves users actually use it.

---

## Step 6: Spot Scope Creep

Before implementation, review the spec and ask for each item:

- Is this required for the MVP user story to work end-to-end?
- Does this solve a proven user pain, or is it "nice to have"?
- Does removing this break anything?

If the answer is "no" to the first question — cut it. Document it for a future milestone.

---

## Rule

If no user pain is identified, no feature should be built.
"It would be useful" is a hypothesis, not a requirement.
Validate before building. Build the minimum that validates. Expand only when validated.
