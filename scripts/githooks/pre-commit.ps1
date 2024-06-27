#!powershell

Write-Host "Packwiz refresh"
& $PSScriptRoot\..\packwiz-serverside.ps1 | Out-Null
& $PSScriptRoot\..\packwiz-refresh.ps1 | Out-Null
git add .
Write-Host "Exit code: $LASTEXITCODE"

# Pass the failure code back to the pre-commit hook
exit $LASTEXITCODE