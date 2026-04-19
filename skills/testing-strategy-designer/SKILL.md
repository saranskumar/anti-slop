---
name: testing-strategy-designer
description: Use when the team needs a testing plan covering unit, integration, end-to-end, contract, and security-adjacent checks for a product or feature. Trigger on requests to design practical testing strategy before or during implementation.
---

# Goal
Create a lean but credible test strategy matched to product risk.

# When to Use
- A feature is planned or near implementation.
- The team needs to know what to test and where.
- Auth, payments, data integrity, or complex flows raise risk.

# Instructions
1. Identify the highest-risk behaviors and failure costs.
2. Map those risks to unit, integration, E2E, or manual verification layers.
3. Define test data, fixtures, mocks, and environment needs.
4. Call out contract and permission checks for APIs and auth-sensitive paths.
5. Recommend the minimum serious coverage for launch.

# Constraints
- Do not prescribe exhaustive test pyramids without regard to team size.
- Test the critical path before edge polish.
- Include negative-path coverage for auth and data mutation flows.

# Output Format
- Risk-based test matrix
- Recommended test layers
- Priority scenarios
- Tooling/environment notes

# Examples
- "Design the testing strategy for this SaaS MVP."
- "What should we test for invite-based auth and billing?"
