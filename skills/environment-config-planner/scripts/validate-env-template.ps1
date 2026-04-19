param(
  [Parameter(Mandatory = $true)]
  [string]$Path
)

$required = Get-Content -Path $Path | Where-Object { $_ -match '^[A-Z0-9_]+=' } | ForEach-Object {
  ($_ -split '=')[0]
}

foreach ($name in $required) {
  if (-not $env:$name) {
    Write-Output "MISSING:$name"
  }
}
