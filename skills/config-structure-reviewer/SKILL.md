---
name: config-structure-reviewer
description: Use this when reviewing how a codebase organizes configuration files, env vars, runtime options, feature flags, and per-environment settings. Trigger on requests to clean up or validate config structure.
---

# Goal
Review config structure so it stays explicit, safe, and maintainable.

# When to Use
- Config is scattered or duplicated.
- Environment-specific behavior is unclear.
- A system mixes runtime config, build config, and secrets.

# Instructions
1. Inventory config sources and consumers.
2. Separate build-time, deploy-time, and runtime configuration.
3. Identify duplication, hidden defaults, and secret leakage risks.
4. Recommend a clearer structure and validation path.

# Constraints
- Do not let configuration logic become hidden code behavior.
- Avoid secrets in general-purpose config files.
- Keep environment-specific overrides explicit.

# Output Format
- config review
- structure problems
- recommended organization
- validation notes

# Examples
- "Review our env and config layout."
- "How should this repo separate runtime config from build config?"
