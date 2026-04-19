---
name: supabase-storage-pattern-designer
description: Use this when a Supabase app needs file or object storage design, bucket strategy, signed URL handling, metadata patterns, upload trust boundaries, or storage access controls.
---

# Goal
Design Supabase Storage usage that is secure, maintainable, and aligned with data ownership rules.

# When to Use
- Files or objects are part of a Supabase feature.
- Bucket boundaries and access patterns are unclear.
- Uploads or downloads cross trust boundaries.

# Instructions
1. Define stored object types, ownership, and lifecycle.
2. Choose bucket layout and metadata strategy.
3. Define upload, read, and delete access patterns.
4. Clarify where signed URLs, processing, and privileged operations happen.

# Constraints
- Do not trust client-supplied metadata blindly.
- Do not place privileged storage operations in untrusted contexts.
- Keep storage rules aligned with the auth model.

# Output Format
- storage model
- bucket and metadata plan
- access strategy
- security notes

# Examples
- "Design Supabase Storage for user-uploaded reports."
- "How should signed downloads work for private files?"
