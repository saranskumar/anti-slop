param(
  [Parameter(Mandatory = $true)]
  [string]$Name
)

$path = Join-Path (Get-Location) "$Name.tsx"

@"
type ${Name}Props = {};

export function $Name(props: ${Name}Props) {
  return (
    <div>
      $Name
    </div>
  );
}
"@ | Set-Content -Path $path

Write-Output "Scaffolded $path"
