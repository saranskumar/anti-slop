# Testing Rule

## Priority tests (must have)
- Login and auth flow
- Core form submissions
- Key API endpoints (sanity tests)

## Tool
- Playwright for UI/integration tests.
- Vitest or Jest for unit logic.

## Philosophy
- Don't aim for 100% coverage. Aim for zero broken critical paths.
- Test behavior, not implementation.

## Rule
Before marking a feature done, write at least one Playwright test covering the happy path.
