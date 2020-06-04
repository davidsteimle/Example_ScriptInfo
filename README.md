# Example_ScriptInfo

* [@dbsteimle](https://twitter.com/dbsteimle) on Twitter
* [davidsteimle](https://github.com/davidsteimle) at GitHub
* DavidSteimle#5975 on Discord
* [davidsteimle.net](https://davidsteimle.net)

## New-ScriptFileInfo

Basic use for creating a general help section. [MyProject.ps1](https://github.com/davidsteimle/Example_ScriptInfo/blob/master/MyProject.ps1)

```powershell
New-ScriptFileInfo -Path .\MyProject.ps1 -Author "David" -Description "This is a script"
```

Using a hashtable to splat data. [MyOtherProject.ps1](https://github.com/davidsteimle/Example_ScriptInfo/blob/master/MyOtherProject.ps1)

```powershell
$MyOtherProject = @{
    Path = ".\MyOtherProject.ps1"
    Author = "Steimle, David B. (davidsteimle@gmail.com)"
    CompanyName = "United States Postal Service"
    Description = "Buy stamps!"
    ProjectUri = "https://github.com/davidsteimle/Example_ScriptInfo"
}

New-ScriptFileInfo @MyOtherProject
```
## Test-ScriptFileInfo

Get the information from a script in a basic format to reference.

```
Test-ScriptFileInfo .\MyOtherProject.ps1 | Select-Object -Property *

Name                       : MyOtherProject
Version                    : 1.0
Guid                       : d15896ff-629e-49cd-8d06-0069c39e0ca6
Path                       : C:\Users\David\working\Example_ScriptInfo\MyOtherProject.ps1
ScriptBase                 : C:\Users\David\working\Example_ScriptInfo
Description                : Buy stamps!
Author                     : Steimle, David B. (davidsteimle@gmail.com)
CompanyName                : United States Postal Service
Copyright                  :
Tags                       :
ReleaseNotes               :
RequiredModules            :
ExternalModuleDependencies :
RequiredScripts            :
ExternalScriptDependencies :
LicenseUri                 :
ProjectUri                 : https://github.com/davidsteimle/Example_ScriptInfo
IconUri                    :
DefinedCommands            :
DefinedFunctions           :
DefinedWorkflows           :
```

## Adding Expanded Information

You can add additional information, particularly examples of usage. These go in the comment block with .DESCRIPTION. [MyOtherOtherProject.ps1](https://github.com/davidsteimle/Example_ScriptInfo/blob/master/MyOtherOtherProject.ps1)

```powershell
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
```

Using ``Get-Help .\MyOtherOtherProject.ps1 -Examples`` yeilds:

```
NAME
    C:\Users\David\working\Example_ScriptInfo\MyOtherOtherProject.ps1

SYNOPSIS
    Just an example...


    -------------------------- EXAMPLE 1 --------------------------

    PS C:\>MyOtherOtherProject.ps1


    -------------------------- EXAMPLE 2 --------------------------

    PS C:\>MyOtherOtherProject.ps1 -Debug


    -------------------------- EXAMPLE 3 --------------------------

    PS C:\>MyOtherOtherProject.ps1 | ConvertTo-Json
```