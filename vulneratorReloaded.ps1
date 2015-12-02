<#
.SYNOPSIS
    This script is intended to replace vulnerator. For transparency reasons as well as environment compatiability powershell
    was choosen. This also gives the user the ability to customize for their purposes.  

.DESCRIPTION
    This script can read .CKL files from STIG Viewer as well as RAW Nessus files. It will parse through and generate a MCCASTv2
    compatible POAM as defualt as well as generate csv exports of the ckl files and nessus files. It can also check to insure
    every host in the nessus file was a credentialed and export a csv report. It can aslo export a report of all the open
    ports that nessus detects.

.EXAMPLE

.OUTPUTS
    This script will create a folder at the target location called vulneratorReloaded_Reports. All exports will be located there.

.NOTES

.HISTORY
    1.00.00
        Intial Release

.TODO

#>

[CmdletBinding(DefaultparameterSetName="None")]
PARAM (
    [Parameter(Mandatory=$false, Position=0, HelpMessage="Location of Nessus file(s)")]
    [ValidateNotNull()]
    [string]$nessus,

    [Parameter(Mandatory=$false, Position=0, HelpMessage="Location of STIG Viewer CKL file(s)")]
    [ValidateNotNull()]
    [string]$ckl,

    [Parameter(Mandatory=$false, Position=0, HelpMessage="Generate POAM")]
    [ValidateNotNull()]
    [switch]$poam,

    [Parameter(Mandatory=$false, Position=0, HelpMessage="Generate Open Ports Report")]
    [ValidateNotNull()]
    [switch]$ports,

    [Parameter(Mandatory=$false, Position=0, HelpMessage="Generate Crednetial Check Report")]
    [ValidateNotNull()]
    [string]$cred,

    [Parameter(Mandatory=$false, Position=0, HelpMessage="Provide the name of the package")]
    [ValidateNotNull()]
    [string]$name,
  
    [Parameter(Mandatory=$true, Position=0, HelpMessage="Provide the folder path for the reports")]
    [ValidateNotNull()]
    [string]$output
)

BEGIN {

}

PROCESS {
}

END {
}