# Code Quality Rule

## Code Must Be

- readable
- consistent
- maintainable
- named clearly
- easy to debug

## Prefer

- descriptive variable and function names
- small focused functions
- explicit conditionals
- reusable helpers when justified
- predictable component structure

## Avoid

- deeply nested conditionals where simpler flow is possible
- repeated DOM or state lookups
- dead code
- premature optimization
- giant files without separation of concerns
- nested complexity

## Refactor When Needed

When editing code:
- remove redundancy
- simplify awkward conditionals
- unify repeated patterns
- preserve behavior unless change is intended

## Final Pass

Check for:
- naming consistency
- repeated logic
- unnecessary error handling
- missing edge states
- broken imports or disconnected flows
