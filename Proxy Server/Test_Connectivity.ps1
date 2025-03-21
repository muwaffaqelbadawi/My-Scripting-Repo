# Verify the proxy is configured
# [System.Net.WebRequest]::DefaultWebProxy | Select-Object Address

# Set Default proxy (System-wide)
# [System.Net.WebRequest]::DefaultWebProxy = New-Object System.Net.WebProxy("http://172.22.26.70:80", $true)

# Set proxy
# netsh.exe winhttp set proxy 172.22.26.70:80