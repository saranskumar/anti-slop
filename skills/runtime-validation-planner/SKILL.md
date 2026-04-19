---
name: runtime-validation-planner
description: Use this when the system needs explicit runtime validation for API inputs, config, queue messages, webhook payloads, file metadata, or external provider responses in TypeScript, JavaScript, Python, or mixed systems.
---

# Goal
Make runtime validation explicit wherever untrusted or externally sourced data enters the system.

# When to Use
- Compile-time typing exists but runtime safety is still needed.
- The system ingests external or cross-boundary data.
- Config, payload, or schema validation strategy is unclear.

# Instructions
1. Identify the trust boundaries where data enters.
2. Decide what must be validated and normalized.
3. Choose where validation lives and what happens on failure.
4. Align validation with error handling and observability.

# Constraints
- Do not trust types alone.
- Do not let invalid external data leak into domain logic.
- Keep validation close to boundary entrypoints.

# Output Format
- validation boundary map
- payload/config validation plan
- failure behavior
- implementation notes

# Examples
- "Plan runtime validation for this TS API."
- "Where should webhook and env validation happen?"
