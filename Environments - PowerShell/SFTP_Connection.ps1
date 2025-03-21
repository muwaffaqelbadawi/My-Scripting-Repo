# Create an SFTP session
$session = New-SFTPSession -ComputerName "<server-IP>" -Credential (Get-Credential "<user>") -AcceptKey

# Connect to the SFTP server using key File
$credential = New-Object pscredential("<user>", (New-Object SecureString))
$session = New-SFTPSession -ComputerName "<server-IP>" -KeyFile "<path/to/local/KeyFile>" -Credential $credential -AcceptKey

# List files and directories in the current working directory in the SFT server
Get-SFTPChildItem -SFTPSession $session|Format-Table

# List directories in a specific path
Set-SFTPLocation -SFTPSession $session -Path "<path/to/location/on/the/server>"

# List the Root Directory
Get-SFTPChildItem -SFTPSession $session|Format-Table -Path "/"

# Specify current working directory pwd in the SFTP server
Get-SFTPLocation -SFTPSession $session

# Download a file fron SFTP server
Get-SFTPItem -SFTPSession $session -Path "<path/to/file/on/the/server>" -Destination "<path/to/local/directory>"

# Upload a file to SFTP server
Set-SFTPItem -SFTPSession $session -Path "<directory/of/the/local/file>" -Destination "<path/to/directory/on/the/server>"

# using LocalFile, RemotePath
Set-SFTPItem -SFTPSession $session -LocalFile "<directory/of/the/local/file>" -RemotePath "<path/to/directory/on/the/server>"

# Store the content of the file in a variable
$people = Get-SFTPContent -SessionId $session -Path "<path/to/the/file/on/the/server>"
$people| ConvertFrom-Csv|Format-Table

# Creeate a content and upload the content to the server
$contents = "bob123"
Set-SFTPContent -SessionId $session -Value $contents -Path "<path/to/the/file.extension>"

# Rename the file on the server
Rename-SFTPFile -SessionId $session -Path "<path/to/the/file.extension>" -NewName "filename.extension"

# Delte a file from the server
Remove-SFTPItem -SessionId $session -Path "<path/to/the/file.extension>"

# Close the connection of SFTP server
Remove-SFTPSession -SessionId $session