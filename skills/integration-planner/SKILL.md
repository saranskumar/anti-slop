---
name: integration-planner
description: Use when a product needs third-party integrations such as payments, email, analytics, AI providers, storage, or internal services. Trigger on requests to plan integration boundaries, provider selection, failure handling, or sync strategies.
---

# Goal
Plan external integrations so they are secure, observable, and replaceable enough for the product stage.

# When to Use
- The system depends on external APIs or providers.
- Provider choice affects architecture or UX.
- Webhooks, sync jobs, or secrets management need planning.

# Instructions
1. Define what business capability the integration supports.
2. Choose the trusted execution layer for the integration.
3. Plan auth/secrets, retries, idempotency, and error visibility.
4. Define data ownership between your system and the provider.
5. Note provider lock-in and replacement risk only where it matters.

# Constraints
- Never expose provider secrets in the client.
- Do not make the user wait on slow integrations if async is viable.
- Avoid adding providers without a clear product reason.

# Output Format
- Integration summary
- Provider responsibilities
- Security and execution model
- Failure handling
- Open risks

# Examples
- "Plan Stripe, email, and OpenAI integrations for this app."
- "How should webhooks fit into this architecture?"
