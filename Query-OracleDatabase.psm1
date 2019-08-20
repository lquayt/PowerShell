<# 
 .Synopsis
  Exceute a Query .

 .Description
  Run a query statement over a Database.

 .Parameter UserName
  Oracle UserName.

 .Parameter Password
  Password of the UserName.

 .Parameter Query
  Query To execute.

 .Parameter ServerName
  Name Of the Oracle Server.

 .Parameter InstanceName
  Name Of the Oracle Instance.

 .Parameter Port
  Port of the Oracle Instance.

 .Example
   # Execute a Query.
   Query-OracleDatabase -Query "Select * from Table" -UserName "UserName" -Password "UsernamePassword" -ServerName "NameOfTheServer" -InstanceName "NameOfTheInstance" -Port 1521

 .Example
   # Execute a Query (Default Instance & Default Port).
   Query-OracleDatabase -Query "Select * from Table" -UserName "UserName" -Password "UsernamePassword" -ServerName "NameOfTheServer"

#>
Add-Type -Path "C:\Program Files\PackageManagement\NuGet\Packages\Oracle.ManagedDataAccess.12.1.24160719\lib\net40\Oracle.ManagedDataAccess.dll"

Function Query-OracleDatabase{
    Param
    (
    [parameter(Mandatory=$true)] [String[]] $UserName,
    [parameter(Mandatory=$true)] [String[]] $Password,
    [parameter(Mandatory=$true)] [String[]] $Query,
    [parameter(Mandatory=$true)] [String[]] $Server,
    [String[]] $InstanceName = "",
    [Int32] $Port = 1521
    )


    $Connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection("User Id=$UserName;Password=$Password;Data Source=localhost/XE")

}

