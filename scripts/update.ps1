$packtoml = '\pack.toml'
$srcPath = '.\src'
$srcPackFile = $srcPath + $packtoml

packwiz refresh --pack-file $srcPackFile --meta-folder-base $srcPath | Out-Null
Write-Host "Updating mods" -ForegroundColor Yellow
packwiz update --all --pack-file $srcPackFile --meta-folder-base $srcPath
Write-Host "Update finished" -ForegroundColor Green

Write-Host "Syncing updated content" -ForegroundColor Yellow
packwiz refresh --pack-file $srcPackFile --meta-folder-base $srcPath | Out-Null

Write-Host "Sync finished" -ForegroundColor Green