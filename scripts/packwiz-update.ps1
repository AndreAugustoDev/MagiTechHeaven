. $PSScriptRoot\variables.ps1

Write-Host "Updating mods" -ForegroundColor Yellow

& $PSScriptRoot\packwiz-refresh.ps1 | Out-Null

packwiz update --all --pack-file $clientPackFile --meta-folder-base $clientPath

& $PSScriptRoot\packwiz-serverside.ps1

& $PSScriptRoot\packwiz-refresh.ps1 | Out-Null

Write-Host "Update finished" -ForegroundColor Green
