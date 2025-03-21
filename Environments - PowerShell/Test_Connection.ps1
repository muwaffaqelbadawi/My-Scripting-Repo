<#
|----------------------------------|
|                                  |
|   IP: Server      Port: Service  |
|                                  |
|----------------------------------|
#>

# tests basic network connectivity (not specific ports)
Test-Connection -ComputerName "<Server IP>"

# test connectivity to a specific <server IP> and <port>
Test-NetConnection -ComputerName "<server IP>" -Port "<port>"

# Ping
PING.EXE "server IP"

# Telnet
telnet.exe "<server IP>" "<port>"