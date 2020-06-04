
<#PSScriptInfo

.VERSION 1.0

.GUID 9031b997-9f0b-4db2-af32-d7d4c4a0166f

.AUTHOR Steimle, David B. (davidsteimle@gmail.com)

.COMPANYNAME United States Postal Service

.COPYRIGHT 

.TAGS 

.LICENSEURI 

.PROJECTURI https://github.com/davidsteimle/Example_ScriptInfo

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES

#>

<# 

.DESCRIPTION 
Buy stamps! 
.SYNOPSIS
Just an example...
.EXAMPLE
MyOtherOtherProject.ps1
.EXAMPLE
MyOtherOtherProject.ps1 -Debug
.EXAMPLE
MyOtherOtherProject.ps1 | ConvertTo-Json
#> 
Param(
    [switch]$Debug # Would provide additional information if this were a real script.
    ,
    [switch]$Other
)

Get-Date
