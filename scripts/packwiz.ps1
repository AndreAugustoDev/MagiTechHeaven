$packtoml = '\pack.toml'
$srcPath = '.\src'
$srcPackFile = $srcPath + $packtoml

& packwiz --pack-file $srcPackFile --meta-folder-base $srcPath $args