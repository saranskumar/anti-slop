---
name: product-builder-orchestrator
description: Use when the request is broad and spans idea evaluation, MVP planning, UX, frontend, backend, database, auth, integrations, and launch strategy. Trigger on asks like "build this app", "turn this idea into a product", "design the whole system", or "plan everything end to end".
---

# Goal
Route broad product-building requests through the right specialist skills and return one coherent plan.

# When to Use
- The user asks for an end-to-end product plan.
- The request crosses strategy, UX, architecture, and implementation.
- The scope is too broad for one specialist skill alone.

# Instructions
1. Classify the request as idea, concept, MVP, UX, architecture, implementation, or full-stack product planning.
2. For broad requests, work in this order: idea -> philosophy -> MVP -> UX -> frontend -> backend -> data/auth -> build plan -> launch.
3. Pull in the most relevant specialist skills instead of improvising one giant answer.
4. Keep sections separated so the output remains actionable.
5. End with key risks, open questions, and the recommended next move.

# Constraints
- Do not replace narrow skills for narrow tasks.
- Do not jump into code if the problem is still strategic.
- Do not merge frontend, backend, auth, and database into one vague section.

# Output Format
- Product summary
- Users and problem
- MVP
- UX and screens
- Frontend plan
- Backend and API plan
- Data and auth plan
- Build roadmap
- Risks and open questions

# Examples
- "Plan my AI travel startup from scratch."
- "Design the full MVP for a developer analytics app."
