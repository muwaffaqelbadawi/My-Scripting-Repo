# Create a script to extract extension information from a plain text
# Create a script to install extensions to Visual Studio automatically


# Download VSCode Extension

# note:
# Version 0.0.1
# Unique Identifier -> ${publisher}.${extension name}


function Get-Extension {
    param (
        [string]$publisher,
        [string]$extension_name,
        [string]$version,
        [string]$relative_path
    )

    [string]$absolute_path = "$relative_path\$extension_name-$version.vsix"
    [string]$extension_url = "https://$publisher.gallery.vsassets.io/_apis/public/gallery/publisher/$publisher/extension/$extension_name/$version/assetbyname/Microsoft.VisualStudio.Services.VSIXPackage"


    try {
        # Create the output folder if it doesn't exist
        if (-not (Test-Path $relative_path)) {
            New-Item -ItemType Directory -Path $relative_path
        }
        # Download the VSCode extension at the specified folder
        $response = Invoke-WebRequest -Uri $extension_url -OutFile $absolute_path -ErrorAction Stop
    }
    catch {
        # Check if the exception is due to a 503 error
        if ($_.Exception.Response.StatusCode -eq [System.Net.HttpStatusCode]::ServiceUnavailable) {
            Write-Host "Could not download: $extension_name extension, $($response.StatusCode) can't reach the proxy server" -ForegroundColor Red
        }
    }
}

Get-Extension -publisher "christian-kohler" -extension_name "path-intellisense" -version "2.10.0" -relative_path "C:\Users\Muwaffaq\OneDrive - EXPRESSO TELECOM SERVICES DMCC\Desktop\"



# Version	2.10.0	
# Unique Identifier	{christian-kohler}.{path-intellisense}