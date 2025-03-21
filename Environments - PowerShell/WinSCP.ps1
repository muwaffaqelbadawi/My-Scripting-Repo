

# Load the WinSCP .NET assembly
try {
    Add-Type -Path "C:\Assembly\WinSCPnet.dll"
} catch {
    Write-Host "Failed to load WinSCP .NET assembly: $_" -ForegroundColor Red
    exit
}

# Create session options
try {
    $sessionOptions = New-Object WinSCP.SessionOptions -Property @{
        Protocol = [WinSCP.Protocol]::Sftp
        HostName = "172.22.45.70"
        UserName = "muwaffaq"
        Password = "PASSword123"
        SshHostKeyFingerprint = "ssh-ed25519 255 Wkn+q+YEUQMnjx3SkM+nQr0J2Nb9Dm6yBJTOUQ9sW1A"
    }
} catch {
    Write-Host "Failed to create session options: $_" -ForegroundColor Red
    exit
}

# Create a session
try {
    $session = New-Object WinSCP.Session
    if ($null -eq $session) {
        Write-Host "Failed to create WinSCP session object." -ForegroundColor Red
        exit
    } else {
        Write-Host "WinSCP session object created successfully." -ForegroundColor Green
    }
} catch {
    Write-Host "Failed to create WinSCP session: $_" -ForegroundColor Red
    exit
}

try {
    # Open the session
    $session.Open($sessionOptions)

    # Upload a file
    $directoryInfo = $session.ListDirectory("/var/www/html/wp-content/uploads/jobsearch-resumes")
    $directoryInfo.Check()

    Write-Host "File transfer completed successfully." -ForegroundColor Green
} catch {
    Write-Host "Error during file transfer: $_" -ForegroundColor Red
} finally {
    # Check if $session is not null before calling Dispose()
    if ($null -eq $session) {
        $session.Dispose()
        Write-Host "Session disposed successfully." -ForegroundColor Green
    } else {
        Write-Host "Session object is null; nothing to dispose." -ForegroundColor Yellow
    }
}

