# File + Media Rule

## Primary storage
- Use Supabase Storage for all user-uploaded files.
- Organize by bucket: public / private / temp.

## Scale path
- Migrate to Cloudflare R2 or AWS S3 when Supabase limits are hit.

## Rule
Never store files in the database. Never use base64 in API responses for file data.
