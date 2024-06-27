. $PSScriptRoot\variables.ps1

Write-Host "Syncing updated content" -ForegroundColor Yellow

packwiz refresh --pack-file $clientPackFile --meta-folder-base $clientPath | Out-Null
packwiz refresh --pack-file $serverPackFile --meta-folder-base $serverPath | Out-Null

Write-Host "Sync finished" -ForegroundColor Green