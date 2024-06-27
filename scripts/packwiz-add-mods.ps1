. $PSScriptRoot\variables.ps1

# Import CSV mod list
$modList = Import-Csv -Path "$PSScriptRoot/../docs/MODLIST.csv"

# Commands dictionary
$commands = @{}

# Command per provider
$cf = "packwiz --pack-file $clientPackFile --meta-folder-base $clientPath cf add --addon-id "
$mr = "packwiz --pack-file $clientPackFile --meta-folder-base $clientPath mr add "

# Walking through each row in the CSV
ForEach ($row in $modList) {
  if ($row.Provider -eq "CurseForge") {
    $commands[$row.Order] = $cf + $row.ID
  }
  elseif ($row.Provider -eq "Modrinth") {
    $commands[$row.Order] = $mr + $row.ID
  }
  else {
    Write-Warning "Unexpected value for column 'Provider': $($row.Provider)"
  }
}

# Sort command dictionary by order
$orderedCommands = $commands.Keys | Sort-Object @{Expression = { [double]$_ } }

foreach ($order in $orderedCommands) {
  $command = $commands[$order]
  Invoke-Expression $command
}