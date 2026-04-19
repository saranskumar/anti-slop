---
name: queue-processing-planner
description: Use this when the system needs queue-backed processing design, message handling rules, delivery semantics, dead-letter strategy, or throughput planning. Trigger on requests about queues, brokers, message processing, and consumer coordination.
---

# Goal
Plan queue-based processing so asynchronous work is reliable and understandable.

# When to Use
- Jobs move through a queue or broker.
- More than one producer or consumer is involved.
- Delivery semantics and failure handling matter.

# Instructions
1. Define producers, consumers, payloads, and delivery expectations.
2. Decide ordering, deduplication, retry, timeout, and dead-letter behavior.
3. Define observability and operator controls.
4. Note throughput and concurrency constraints.

# Constraints
- Do not add a queue without a real async or scaling reason.
- Do not leave poison-message handling undefined.
- Keep producer and consumer contracts version-aware.

# Output Format
- queue model
- message contract
- retry and failure strategy
- operational notes

# Examples
- "Plan the queue for image processing jobs."
- "How should these event consumers coordinate?"
