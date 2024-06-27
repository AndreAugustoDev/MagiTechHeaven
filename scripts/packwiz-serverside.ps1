. $PSScriptRoot\variables.ps1

Write-Host "Updating serverside mods" -ForegroundColor Yellow

# Import CSV mod list
$modList = Import-Csv -Path "$PSScriptRoot/../docs/MODLIST.csv"

If (-not(Test-Path -Path "$serverPath/mods")) {
  New-Item -Path "$serverPath/mods" -ItemType Directory
}

# Walking through each row in the CSV
ForEach ($row in $modList) {
    if ($row.Side -eq "Both") {
      Copy-Item -Path "$clientPath/mods/$($row.ModID).pw.toml" -Destination "$serverPath/mods" -Recurse -Force
  }
}
