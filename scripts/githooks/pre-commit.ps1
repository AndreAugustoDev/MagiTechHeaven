#!powershell

Write-Host "Packwiz refresh"
.\scripts\refresh.ps1

Write-Host "Exit code: $LASTEXITCODE"

# Pass the failure code back to the pre-commit hook
exit $LASTEXITCODE