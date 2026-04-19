# Validation + Types Rule

This rule is stack-agnostic. Apply the patterns using your project's validation and type system.

---

## Schema Validation

- Define a schema for every data shape that crosses a boundary (form → handler, API → UI, DB → service)
- Use the project's validation library (Zod, Yup, Joi, Valibot, Pydantic, Marshmallow, etc.)
- Define schemas once, reuse across frontend and backend where possible
- Never trust raw API or user input without parsing and validating it first

## TypeScript (when using TS)

- Strict mode always on — no implicit `any`
- Infer types from schemas rather than writing them twice (e.g., `z.infer<>` with Zod)
- Use `unknown` for untyped external data, and narrow it properly before use
- No raw `any` casts — if you feel the urge to use `any`, write a schema instead

## Other typed languages

- Python: use Pydantic or dataclasses with type hints
- Go: define structs with proper validation tags
- Java/Kotlin: use validation annotations or data classes
- Whatever the language — validation logic lives at the boundary, not scattered across the codebase

## Rule

Every data boundary must be validated:
- Form submission → validate before processing
- API call → validate response before consuming
- Database query result → validate shape before mapping
- External webhook → validate signature and payload

If a data boundary lacks validation, it is a runtime error waiting to happen.
