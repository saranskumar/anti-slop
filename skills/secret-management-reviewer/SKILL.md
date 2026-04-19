---
name: secret-management-reviewer
description: Use this when reviewing or designing how secrets, API keys, service credentials, signing keys, tokens, and environment-specific credentials are stored, loaded, rotated, and kept out of untrusted runtimes.
---

# Goal
Ensure secret handling is safe across local, CI, staging, production, and serverless environments.

# When to Use
- A system depends on external providers or privileged credentials.
- Environment configuration or deployment setup is being designed.
- A review is needed for secret exposure risk.

# Instructions
1. Inventory the secrets and their trust requirements.
2. Identify where each secret is stored, loaded, and used.
3. Verify no privileged credentials leak into client code or untrusted runtimes.
4. Recommend safer loading, scoping, and rotation practices.

# Constraints
- Never normalize secrets in source code.
- Do not let service-role or admin credentials flow into the client.
- Keep environment-specific differences explicit.

# Output Format
- secret inventory
- trust mapping
- risks
- remediation steps

# Examples
- "Review how we handle env vars across local and prod."
- "Where should these service credentials live?"
