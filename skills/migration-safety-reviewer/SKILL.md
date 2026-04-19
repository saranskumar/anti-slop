---
name: migration-safety-reviewer
description: Use this when reviewing database, storage, config, queue, or integration migrations for rollout safety, rollback feasibility, data correctness, and environment-specific deployment risk.
---

# Goal
Review migrations so changes can be applied without avoidable production damage.

# When to Use
- A schema or config migration is planned.
- Live data or traffic will be affected.
- Rollout and rollback safety are uncertain.

# Instructions
1. Identify what changes and who is affected.
2. Review sequencing, backward compatibility, and rollout order.
3. Review rollback feasibility and operator visibility.
4. Flag irreversible or data-destructive risks clearly.

# Constraints
- Do not approve risky migrations without rollback thought.
- Keep environment-specific differences explicit.
- Treat hidden coupling as migration risk.

# Output Format
- migration review
- blockers
- sequencing notes
- rollback and monitoring notes

# Examples
- "Review this Postgres migration plan."
- "Is this config rollout safe across environments?"
