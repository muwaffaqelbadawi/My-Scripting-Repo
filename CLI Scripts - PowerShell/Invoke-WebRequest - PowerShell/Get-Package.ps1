# Download Windows Package


# Package URL
# Invoke-WebRequest -Uri "https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.8.6/Microsoft.UI.Xaml.2.8.x64.appx -OutFile $env:TEMP\Microsoft.UI.Xaml.2.8.x64.appx"


# Install Windows Package
# Add-AppxPackage -Path "E:\Programs\Windows Packages\Microsoft.UI.Xaml-2.8.7.zip\Microsoft.UI.Xaml.2.8.7\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.8.appx"


# Add-AppxPackage -Path "E:\Programs\Windows Packages\UwpDesktop-10.0.14393.3.nupkg\UwpDesktop.10.0.14393.3\UwpDesktop.10.0.14393.3.nupkg"



# Verify installation
# Get-AppxPackage "Microsoft.UI.Xaml.2.8" -allusers

# Install
Add-AppxPackage -Path "E:\Programs\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"