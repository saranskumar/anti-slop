---
name: debugging
description: Use when investigating a bug, runtime error, unexpected behavior, test failure, or crash. For systematic root cause analysis, error message interpretation, stack trace reading, reproduction steps, and targeted fixes. Activate when the user says "it's broken", "this doesn't work", "I'm getting an error", or "help me debug".
---

# Debugging

Bugs don't lie — but they do mislead. Guessing at a fix before understanding the root cause makes things worse. This skill forces systematic diagnosis before any code changes.

---

## When to Activate

- Runtime error, exception, or crash
- Feature behaves differently than expected
- Test is failing and you don't know why
- "It worked before" — regression investigation
- Performance degradation that looks like a bug

---

## Step 1: Read the Full Error — Before Doing Anything

Most debugging failures happen because the error message was skimmed, not read.

- Read the **full stack trace** — the last frame is usually the cause, the first frame is the symptom
- Copy the exact error message — don't paraphrase it
- Note the **file + line number** — that's where to look first

---

## Step 2: Reproduce It Consistently

A bug you can't reproduce reliably, you can't fix reliably.

- Identify: what exact input/state produces the error?
- Isolate: what's the minimum setup that triggers it?
- Confirm: does it fail every time with that input?

If you can't reproduce it consistently, you don't understand it yet. Stop and investigate the conditions first.

---

## Step 3: Understand Before Fixing

```
Wrong: See error → try fix → check if it works → repeat
Right: See error → understand why → fix root cause → verify
```

Ask:
- What was the code supposed to do?
- What did it actually do?
- Why is there a gap?

---

## Step 4: Isolate the Failure Point

**Binary search the problem:**
1. Add a log/breakpoint at the midpoint of the suspicious code path
2. Does the bug appear before or after that point?
3. Halve again — repeat until you have the exact line

```python
# Example: Binary search debugging
print("Step 1: before transform") # ← does this print?
data = transform(raw)
print("Step 2: after transform")  # ← or does it fail here?
result = process(data)
print("Step 3: after process")
```

**Check recent changes first:**
- `git log --oneline -10` — what changed recently?
- `git diff HEAD~1` — what exactly changed?
- Most bugs live within the last diff

---

## Step 5: Common Root Cause Patterns

| Symptom | Likely Cause |
|---------|-------------|
| `undefined is not a function` | Wrong import, or function called before definition |
| `null` pointer / `None` access | Assumption that data exists when it doesn't |
| Stale data after update | Missing cache invalidation or state reset |
| Works locally, fails in CI | Missing env variable or dependency |
| Works first time, fails second | Shared mutable state not reset between calls |
| Different behavior per user | Missing auth check or wrong data scope |
| Timing issues / race conditions | Async code without proper await or locking |

---

## Step 6: Fix the Root Cause — Not the Symptom

```
Symptom:  The button is disabled when it shouldn't be
Symptom fix: Hardcode enabled = true  ← WRONG
Root cause: form.isValid() returns false because email validator is broken
Root fix:  Fix the email validator  ← RIGHT
```

Before writing a fix, state in plain English: "The bug is caused by X. My fix addresses X by doing Y."

If you can't articulate why the fix works, it won't hold.

---

## Step 7: Verify — Don't Trust

After applying the fix:
- Does the specific failure case now pass?
- Did you run the tests?
- Did you check that adjacent functionality still works?
- Did you remove all debug logs?

---

## Examples

See `examples/` for common debugging sessions:
- `examples/async-race-condition.md` — diagnosing timing bugs
- `examples/null-pointer-trace.md` — reading stack traces to root cause

---

## Output Checklist

- [ ] Full error message read (not skimmed)
- [ ] Bug reproduced consistently before attempting fix
- [ ] Root cause identified and stated in plain English
- [ ] Fix targets root cause, not symptom
- [ ] Tests run after fix
- [ ] Debug logs removed from code

---

## Rule

Never ship a fix you don't understand.
If the fix works but you don't know why, it will break something else.
