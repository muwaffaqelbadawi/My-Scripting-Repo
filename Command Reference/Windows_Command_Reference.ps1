<#
|----------------------------------|
|                                  |
|   IP: Server      Port: Service  |
|                                  |
|----------------------------------|
#>

# Find the PID and process name:
Get-Process -Id (Get-NetTCPConnection -LocalPort "<Port>").OwningProcess

# Get process ID <process_ID>
Get-Process -Id "<process_ID>"