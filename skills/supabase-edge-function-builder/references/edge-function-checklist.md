# Edge Function Checklist

- Validate request body and headers first.
- Verify caller identity or webhook signature before side effects.
- Keep service-role use inside the function only.
- Make external calls idempotent where possible.
- Log request correlation IDs and failure context without leaking secrets.
