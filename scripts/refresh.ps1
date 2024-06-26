$packtoml = '\pack.toml'
$srcPath = '.\src'
$srcPackFile = $srcPath + $packtoml

Write-Host "Syncing updated content" -ForegroundColor Yellow
packwiz refresh --pack-file $srcPackFile --meta-folder-base $srcPath | Out-Null

Write-Host "Sync finished" -ForegroundColor Green