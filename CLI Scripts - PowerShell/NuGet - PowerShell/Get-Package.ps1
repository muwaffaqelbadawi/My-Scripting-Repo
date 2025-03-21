# Download Windows Package

# https://www.nuget.org/api/v2/package/Microsoft.UI.Xaml/2.8.7

# Schema
# nuget.exe install "<Package full name>" -version "<version number>" -Source "<source URL>" -ConfigFile "<nuget.config directory (for Windows)>" -OutputDirectory "<full output directory>"


# nuget.exe install "${package_name}" -version "${package_version}" -OutputDirectory "${E:\Programs\Windows Packages\package.nupkg}"



nuget.exe install "UwpDesktop" -version "10.0.14393.3" -OutputDirectory "E:\Programs\Windows Packages\UwpDesktop-10.0.14393.3.nupkg"

