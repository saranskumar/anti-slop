---
name: launch-readiness-reviewer
description: Review whether a product, MVP, or feature is actually ready to launch. Use when the team needs a production-minded check across product quality, UX edge cases, auth and security, observability, support readiness, pricing readiness, and post-launch measurement.
---

# Goal
Provide a sharp release-quality review before launch decisions are made.

# When to use
- The team believes the MVP is nearly ready.
- Launch risk, trust, billing, or support readiness must be assessed.
- A beta, private launch, or public launch decision is pending.

# Instructions
1. Review the core value loop and verify it works end to end.
2. Inspect onboarding, empty states, errors, permissions, and failure recovery.
3. Check operational concerns: observability, support paths, analytics, and rollback thinking.
4. Evaluate whether monetization, access control, and trust signals are coherent enough for launch.
5. Return `launch`, `limited beta`, or `do not launch yet` with rationale.

# Constraints
- Do not confuse "feature complete" with "launch ready."
- Be stricter on trust, support, and data correctness than on cosmetic polish.
- Name blockers clearly rather than softening them.

# Output format
- Launch verdict
- Blockers
- Should-fix items
- Acceptable deferrals
- First-30-days measurement plan

# Examples
- "Review whether this AI SaaS is ready for a paid beta."
- "What would block launch for this internal admin platform?"

# Output expectations
The review should help a serious team avoid an avoidable bad launch.
