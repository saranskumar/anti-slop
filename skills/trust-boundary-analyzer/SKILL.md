---
name: trust-boundary-analyzer
description: Use this when the system needs clear analysis of trusted versus untrusted execution contexts, external inputs, client/server boundaries, provider callbacks, or admin-level code paths. Trigger on requests about trust boundaries, attack surfaces, or where verification must happen.
---

# Goal
Make trust boundaries explicit so security and architecture decisions stay grounded.

# When to Use
- The system crosses browser, server, database, queue, webhook, or provider boundaries.
- The team is unclear where verification belongs.
- A review is needed for privileged paths.

# Instructions
1. List all execution contexts and who controls them.
2. Mark which inputs cross trust boundaries.
3. Define where validation, auth, and authorization must occur.
4. Highlight unsafe assumptions and boundary leaks.

# Constraints
- Do not treat internal network position as trust.
- Keep boundary analysis concrete to the system.
- Do not skip third-party callbacks and storage access.

# Output Format
- trust map
- boundary crossings
- required checks
- risk notes

# Examples
- "Analyze trust boundaries for this Next.js plus Supabase app."
- "Where should verification happen in this webhook flow?"
