# Download dotnet packages

function Get-Package {
    param (
        [string]$package_name,
        [string]$version,
        [string]$relative_path
    )

    $absolute_path = "$relative_path\$extension_name-$version.nupkg"

    try {
        # Create the output folder if it doesn't exist
        if (-not (Test-Path $relative_path)) {
            New-Item -ItemType Directory -Path $relative_path
        }
        # Download the package using .NET CLI
        dotnet nuget download $package_name --version $version --output-directory $absolute_path
    }
    catch {
        # Check if the exception is due to a 503 error
        if ($_.Exception.Response.StatusCode -eq [System.Net.HttpStatusCode]::ServiceUnavailable) {
            Write-Host "Could not download: $extension_name extension, $($response.StatusCode) can't reach the proxy server" -ForegroundColor Red
        }
    }
}

Get-Package -package_name "Microsoft.UI.Xaml" -version "2.8.7" -relative_path "C:\Users\Muwaffaq\OneDrive - EXPRESSO TELECOM SERVICES DMCC\Desktop\"