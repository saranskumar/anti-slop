# Background Jobs Rule

## When to use
- Email sending
- Workflow execution
- Long-running automation tasks
- Anything that should not block the HTTP response

## Stack
- Start with Supabase queues for simple jobs.
- Use BullMQ when you need retries, priorities, or concurrency control.

## Rule
Never run background work inside a request handler. Use a queue.
