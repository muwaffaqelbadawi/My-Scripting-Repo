<#
|-----------------------------------------------|
|                                               |
|   IP: Server      Port: Service               |
|                                               |
|   Test Environment Server IP: 172.22.45.70    |
|                                               |
|   Username: muwaffaq    password: PASSword123 |
|                                               |
|   ssh.exe muwaffaq@172.22.45.70               |
|                                               |
|                                               |
|-----------------------------------------------|
#>

<#
Test Environment URL: https://staging.sudani.sd/
PATH: /var/www/html/wp-content/uploads/jobsearch-resumes
#>

#-----------------------------------------------------------------------------------------------------

# Obtain Server fingerprint
# ssh-keyscan -t rsa 172.22.45.70

# Obtain Server fingerprint
# ssh-keyscan -t rsa 172.22.45.70 | ssh-keygen -lf -

#-----------------------------------------------------------------------------------------------------

# test connectivity to a specific <IP> and port
# Test-NetConnection -ComputerName 172.22.45.70 -Port 22

#-----------------------------------------------------------------------------------------------------

# SSH

# Starting OpenSSH.Client session to remote server
# ssh.exe muwaffaq@172.22.45.70

#-----------------------------------------------------------------------------------------------------

# SFTP Connection

# Attempt to create an SFTP session
# $session = New-SFTPSession -ComputerName "172.22.45.70" -Credential (Get-Credential) -AcceptKey

# List the a specific Directory
# Get-SFTPChildItem -SFTPSession $session -Path "/var/www/html/wp-content/uploads/jobsearch-resumes"|Format-Table

#-----------------------------------------------------------------------------------------------------

# SCP
# scp -r muwaffaq@172.22.45.70:"/var/www/html/wp-content/uploads/jobsearch-resumes" "E:\CV"

#-----------------------------------------------------------------------------------------------------

# test connectivity to a specific <server IP> and <port>
Test-NetConnection -ComputerName "172.22.45.70" -Port "21" -Verbose

#-----------------------------------------------------------------------------------------------------

# Ping
# PING.EXE "172.22.45.70"

#-----------------------------------------------------------------------------------------------------

# Telnet
# telnet.exe "172.22.45.70" "21"