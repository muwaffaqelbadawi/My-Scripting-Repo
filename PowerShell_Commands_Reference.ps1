# Get process details
Get-Process

# Displays the full path of the command if found in "PATH"
(Get-Command "command.exe").Source

# Display all path environment variables
$env:PATH

# Split path entrainment variables by ";"
$env:PATH -split ';'

# Show all the methods of the module
Get-Command -Module "<Module name>"

# The dot ('.') represents the item at the current location

# Invoke command
Invoke-Command

# Invoke expression
Invoke-Expression

# Call operator or Invocation operator
# &

# PowerShell Stored Modules
$env:PSModulePath -split ';'

# Open directory in File Explorer
Invoke-Item

# Import Module
Import-Module

# Manifest Module
New-ModuleManifest -Path "path/to/script.psd1" -RootModule "path/to/script.psm1"

# Create a new file
New-Item -Path "<psth/file.txt>" -ItemType File