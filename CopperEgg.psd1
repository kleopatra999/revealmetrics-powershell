#
# Module manifest for module 'CopperEgg'
#
# Generated by: scott johnson
#
# Generated on: 01/16/2013
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = 'CopperEgg.psm1'

# Script module or binary module file associated with this manifest
ModuleToProcess = 'CopperEgg.psm1'

# Version number of this module.
ModuleVersion = '0.9.1'

# ID used to uniquely identify this module
GUID = '278e72de-7b40-4da9-9bda-6a3c0c09b881'

# Author of this module
Author = 'scott johnson'

# Company or vendor of this module
CompanyName = 'CopperEgg Corporation'

# Copyright statement for this module
Copyright = '(c) 2012 CopperEgg Corporation. All rights reserved.'

# Description of the functionality provided by this module
# Description = 'The CopperEgg powershell module provides powershell access to the CopperEgg API.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of the .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
ScriptsToProcess = @('Initialize-Dashboards.ps1','Initialize-MetricGroups.ps1','Start-CopperEggMonitor.ps1')

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
#CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module.
ModuleList = @('CopperEgg.psm1')

# List of all files packaged with this module
FileList = @('CopperEgg.psd1','CopperEgg.psm1','Initialize-MetricGroups.ps1','Initialize-Dashboards.ps1','Start-CopperEggJob.ps1','Start-CustomCopperEggJob.ps1','Start-CopperEggMonitor.ps1','win_counters.txt')

# Private data to pass to the module specified in RootModule/ModuleToProcess
PrivateData = ''

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
