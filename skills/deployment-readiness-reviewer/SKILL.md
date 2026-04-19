---
name: deployment-readiness-reviewer
description: Use this when reviewing whether an app, service, worker, CLI, or serverless system is ready for its target environment with respect to config, secrets, migrations, dependencies, observability, rollback, and runtime constraints.
---

# Goal
Assess whether software is actually ready to deploy to the intended environment.

# When to Use
- Release or deployment is approaching.
- A new environment is being introduced.
- The team needs a pre-deploy hardening check.

# Instructions
1. Review runtime assumptions and environment config.
2. Review secrets, dependencies, migrations, and external services.
3. Review observability, rollback, and operator visibility.
4. Return blockers and recommended fixes.

# Constraints
- Do not confuse passing tests with deployment readiness.
- Make environment-specific blockers explicit.
- Treat missing rollback or visibility as deployment risk.

# Output Format
- readiness verdict
- blockers
- should-fix items
- deployment notes

# Examples
- "Review this API for staging deployment readiness."
- "What is missing before we ship this worker service?"
