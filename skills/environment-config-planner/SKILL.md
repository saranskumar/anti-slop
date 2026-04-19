---
name: environment-config-planner
description: Use this when planning environment variables, config files, secrets, flags, and provider settings across local, CI, staging, production, serverless, or multi-runtime systems.
---

# Goal
Plan configuration so environments are reproducible and secrets stay safe.

# When to Use
- A new system is being set up.
- Existing env vars and config are ad hoc.
- The project spans several runtimes or deployment targets.

# Instructions
1. List required configuration by environment and by runtime.
2. Separate secrets from non-secret configuration.
3. Decide how configuration is validated and loaded.
4. Note defaults, overrides, and environment-specific restrictions.

# Constraints
- Do not assume one `.env` file is enough for all contexts.
- Keep required config discoverable.
- Avoid silent fallback behavior for critical values.

# Output Format
- config inventory
- environment mapping
- validation and loading strategy
- risks

# Examples
- "Plan env configuration for local, CI, staging, and prod."
- "How should serverless and worker configs differ?"
