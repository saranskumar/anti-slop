---
name: service-boundary-designer
description: Use this when the team needs to decide how responsibilities should be split across services, modules, workers, APIs, or runtimes. Trigger on requests about service boundaries, ownership, modularity, monolith versus separation, or where logic should live.
---

# Goal
Define clear ownership boundaries for backend or multi-runtime systems.

# When to Use
- Logic is growing across several modules or services.
- A monolith needs clearer internal boundaries.
- A team is considering splitting work across APIs, workers, or serverless functions.

# Instructions
1. Identify domains, actors, and ownership boundaries.
2. Separate synchronous request work from background or integration work.
3. Decide what should stay together and what should be isolated.
4. Explain the operational tradeoffs of the chosen split.

# Constraints
- Do not split systems for status.
- Keep boundaries tied to ownership and runtime needs.
- Prefer simpler structures when the team is small.

# Output Format
- domain map
- proposed boundaries
- responsibilities per boundary
- tradeoffs and risks

# Examples
- "Should this stay a modular monolith or split into services?"
- "Where should job processing live relative to the API?"
