Install-Package nuget
Find-Package -Name Oracle.ManagedDataAccess –Provider NuGet -Source http://www.nuget.org/api/v2/
# register New Source
Register-PackageSource -Name "NugetSource" -Location "http://www.nuget.org/api/v2" –ProviderName nuget
#Get List of PackageSource
Get-PackageSource
# Install Oracle.ManagedDataAccess Package
Install-Package -Name Oracle.ManagedDataAccess -Source NugetSource
