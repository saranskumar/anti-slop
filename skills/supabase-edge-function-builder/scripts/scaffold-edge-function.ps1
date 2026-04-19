param(
  [Parameter(Mandatory = $true)]
  [string]$FunctionName
)

$dir = Join-Path (Get-Location) $FunctionName
New-Item -ItemType Directory -Force $dir | Out-Null

$file = Join-Path $dir "index.ts"
@"
import { serve } from \"https://deno.land/std/http/server.ts\";

serve(async (_req) => {
  return new Response(JSON.stringify({ success: true, function: \"$FunctionName\" }), {
    headers: { \"Content-Type\": \"application/json\" },
  });
});
"@ | Set-Content -Path $file

Write-Output "Scaffolded $file"
