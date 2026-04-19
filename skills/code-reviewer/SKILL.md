---
name: code-reviewer
description: Use this when reviewing code changes for correctness, maintainability, security-sensitive logic, boundary separation, and likely regressions across any supported runtime or framework.
---

# Goal
Provide a production-minded code review focused on real risks.

# When to Use
- A change set needs review before merge or release.
- A complex feature spans several files or layers.
- Security, auth, data, or environment changes are involved.

# Instructions
1. Review for correctness, trust boundaries, and boundary separation.
2. Identify likely regressions, missing validations, and risky duplication.
3. Prioritize findings by severity and likelihood.
4. Note missing tests or rollout risks.

# Constraints
- Findings first, summary second.
- Do not focus on style when correctness risk is higher.
- Be explicit about assumptions.

# Output Format
- prioritized findings
- open questions
- residual risks
- brief summary

# Examples
- "Review this auth-related PR."
- "Do a production-minded code review of this feature."
