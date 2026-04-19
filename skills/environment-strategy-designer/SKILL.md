---
name: environment-strategy-designer
description: Use this when the project needs a clear strategy for local, test, staging, production, cloud, serverless, or hybrid environments. Trigger on requests about environment layout, runtime differences, environment-specific behavior, or deployment-context planning.
---

# Goal
Design a clean environment strategy that keeps runtime assumptions and configuration safe and explicit.

# When to Use
- A project runs across more than one environment.
- Environment drift or unclear config is creating risk.
- Deployment model affects implementation choices.

# Instructions
1. List the relevant environments and what differs in each.
2. Define config, secret, dependency, and data differences.
3. Note how developers, CI, and production each obtain configuration.
4. Flag local-only shortcuts that cannot leak into higher environments.

# Constraints
- Do not treat local and production as interchangeable.
- Keep secrets handling explicit.
- Avoid environment logic hidden in ad hoc scripts.

# Output Format
- environment map
- config and secret strategy
- environment differences
- risks and controls

# Examples
- "Design environment strategy for local, staging, and production."
- "How should this serverless app handle config per environment?"
