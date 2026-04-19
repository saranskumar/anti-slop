# Debugging Rule

## Process

1. understand expected behavior
2. identify actual behavior
3. find root cause — not just symptoms
4. patch minimally and clearly
5. check related flows that may also break

## Avoid

- patching symptoms
- rewriting large areas unless required
- rewriting everything

## Always Check

- related flows
- edge cases
- regression impact on surrounding logic

## Rules

- prefer narrow fixes with high confidence
- remove redundant logic if it contributes to the bug
- preserve existing architecture unless it is the cause
