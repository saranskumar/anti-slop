---
name: observability-planner
description: Use this when the system needs logging, metrics, tracing, alerting, or operator-visible runtime signals for APIs, workers, integrations, serverless functions, or local-to-production supportability.
---

# Goal
Design observability so failures, regressions, and operational behavior are visible enough to act on.

# When to Use
- A feature or system is nearing production.
- Async jobs, integrations, or distributed components need visibility.
- The team is unclear what signals matter.

# Instructions
1. Identify critical user paths, operator paths, and failure points.
2. Define logs, metrics, traces, and alerts that match those paths.
3. Specify correlation identifiers and runtime context needed for debugging.
4. Note environment-specific observability requirements.

# Constraints
- Do not log secrets or sensitive payloads.
- Do not collect noise without a use case.
- Keep signals tied to operating needs.

# Output Format
- observability plan
- signal inventory
- alerting and debugging notes
- rollout guidance

# Examples
- "Plan observability for this worker and API system."
- "What should we log and monitor for this webhook pipeline?"
