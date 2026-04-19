---
name: system-architecture-designer
description: Use when the team needs a top-level system architecture spanning frontend, backend, auth, data stores, jobs, integrations, and deployment boundaries. Trigger on requests to design the overall system or validate a proposed architecture.
---

# Goal
Define a system shape that fits product scope, team size, and operational reality.

# When to Use
- A product or major feature needs an overall architecture.
- Multiple subsystems must coordinate.
- Tradeoffs between simplicity and scale need explicit treatment.

# Instructions
1. Define system boundaries and primary domains.
2. Map frontend, backend, auth, data, jobs, and external systems.
3. Identify trusted boundaries and data ownership.
4. Choose a deployment and modularity model with justification.
5. Flag observability, failure, and scale concerns.

# Constraints
- Default to simpler architecture unless requirements justify more.
- Do not recommend distributed systems for status.
- Tie every major component to a product need.

# Output Format
- Architecture summary
- Domain/component map
- Trust boundaries
- Key tradeoffs
- Risks and next decisions

# Examples
- "Design the full system architecture for this AI SaaS."
- "Should this be a modular monolith or split services?"
