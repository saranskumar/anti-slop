# Observability Rule

## Error tracking
- Use Sentry for all runtime errors.
- Capture meaningful context: user ID, action, route.
- Never deploy to production without Sentry connected.

## User behavior
- Use PostHog for product analytics.
- Track key actions: workflow created, form submitted, feature used.
- Never track PII directly.

## Rule
If you cannot see what broke and how users behaved, the product is blind. Observability ships with the feature.
