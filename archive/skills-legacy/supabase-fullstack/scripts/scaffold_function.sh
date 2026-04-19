#!/bin/bash
# Scaffolds a new Supabase Edge Function
NAME=$1
if [ -z "$NAME" ]; then
  echo "Usage: ./scaffold_function.sh <function_name>"
  exit 1
fi

mkdir -p "supabase/functions/$NAME"
cat <<EOF > "supabase/functions/$NAME/index.ts"
import { serve } from "https://deno.land/std@0.168.0/http/server.ts"

serve(async (req) => {
  return new Response("Hello from $NAME!")
})
EOF

echo "Function $NAME scaffolded at supabase/functions/$NAME/index.ts"
