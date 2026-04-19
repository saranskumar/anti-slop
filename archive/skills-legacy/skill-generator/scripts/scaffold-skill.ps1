param(
  [Parameter(Mandatory = $true)]
  [string]$SkillName
)

$skillPath = Join-Path (Get-Location) ".antigravity\skills\$SkillName"
New-Item -ItemType Directory -Force $skillPath | Out-Null
$skillFile = Join-Path $skillPath "SKILL.md"

if (-not (Test-Path $skillFile)) {
  @"
---
name: $SkillName
description: Replace with a precise trigger description.
---

# Goal

# When to Use

# Instructions
1. 

# Constraints
- 

# Output Format
- 

# Examples
- 
"@ | Set-Content $skillFile
}

Write-Output "Scaffolded $skillPath"
