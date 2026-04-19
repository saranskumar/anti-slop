# API Contracts

This file MUST be updated whenever a new endpoint is created or an existing one changes.

## Standard response shape
Every API endpoint must return this shape:
```json
{
  "success": true,
  "data": {},
  "error": null
}
```

On error:
```json
{
  "success": false,
  "data": null,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Human-readable description",
    "details": {}
  }
}
```

## Endpoints
Document each endpoint here as you build them:

### Template
```
### [METHOD] /api/[path]
- **Description**: what it does
- **Auth required**: yes/no (role)
- **Request body**: (link to Zod schema or inline shape)
- **Response shape**: { success, data: {...}, error }
- **Error cases**: list known error codes
```

---

_No endpoints documented yet. Update this file as you build._
