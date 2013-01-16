#
#	Start-CopperEggMonitor.ps1 kicks off a series of background monitoring jobs.
#
# Copyright (c) 2012 CopperEgg Corporation. All rights reserved.
#
$global:CopperEggJobs = @()
$global:CopperEggJobCount = 0
function Start-CopperEggMonitor {
  $cmd = 'c:\Program Files (x86)\CopperEgg\Modules\CopperEgg\Start-CopperEggJob.ps1'
  $cmdCustom = 'c:\Program Files (x86)\CopperEgg\Modules\CopperEgg\Start-CustomCopperEggJob.ps1'
  $mhj = $global:master_hash | ConvertTo-Json -Depth 5

  #   $global:system_group_name = "System"
  if( $global:system_group -ne $null ) {
    [string[]]$cpath = $global:system_group.Get_Item("MSpaths")
	  $freq = $global:system_group.Get_Item("frequency")
    [string]$gname = $global:versioned_system_group_name
    Write-Host "Starting job, monitoring $global:versioned_system_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  #   $global:netclr_group_name = "NET_CLR"
  if( $global:netclr_group -ne $null ) {
    [string[]]$cpath = $global:netclr_group.Get_Item("MSpaths")
	  $freq = $global:netclr_group.Get_Item("frequency")
    [string]$gname = $global:versioned_netclr_group_name
    Write-Host "Starting job, monitoring $global:versioned_netclr_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  #   $global:memory_group_name = "System_Memory"
  if( $global:memory_group -ne $null ) {
    [string[]]$cpath = $global:memory_group.Get_Item("MSpaths")
	  $freq = $global:memory_group.Get_Item("frequency")
    [string]$gname = $global:versioned_memory_group_name
    Write-Host "Starting job, monitoring $global:versioned_memory_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  # $global:storage_group_name = "Storage"
  if( $global:storage_group -ne $null ) {
    [string[]]$cpath = $global:storage_group.Get_Item("MSpaths")
	  $freq = $global:storage_group.Get_Item("frequency")
    [string]$gname = $global:versioned_storage_group_name
    Write-Host "Starting job, monitoring $global:versioned_storage_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  #   $global:aspnet_group_name = "ASP_NET"
  if( $global:aspnet_group -ne $null ) {
    [string[]]$cpath = $global:aspnet_group.Get_Item("MSpaths")
	  $freq = $global:aspnet_group.Get_Item("frequency")
    [string]$gname = $global:versioned_aspnet_group_name
    Write-Host "Starting job, monitoring $global:versioned_aspnet_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  #  $global:mssql_group_name = "MSSQL"
  if( $global:mssql_group -ne $null ) {
    [string[]]$cpath = $global:mssql_group.Get_Item("MSpaths")
	  $freq = $global:mssql_group.Get_Item("frequency")
    [string]$gname = $global:versioned_mssql_group_name
    Write-Host "Starting job, monitoring $global:versioned_mssql_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  #   $global:web_group_name = "Web_Services"
  if( $global:web_group -ne $null ) {
    [string[]]$cpath = $global:web_group.Get_Item("MSpaths")
	  $freq = $global:web_group.Get_Item("frequency")
    [string]$gname = $global:versioned_web_group_name
    Write-Host "Starting job, monitoring $global:versioned_web_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmd $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmd,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }
  #		The following kicks off a background job for UserDefined metrics
  #		It will do nothing if none have been defined in win_counters.txt
  #   $global:custom_group_name = "UserDefined"
  if( $global:custom_group -ne $null ) {
    [string[]]$cpath = $global:custom_group.Get_Item("CE_Variables")
	  $freq = $global:custom_group.Get_Item("frequency")
    [string]$gname = $global:versioned_custom_group_name
    Write-Host "Starting Custom job, monitoring $global:versioned_custom_group_name at an interval of $freq seconds"
    $j = Start-Job -ScriptBlock {param($cmdCustom,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq) & $cmdCustom $cpath $gname $mhj $global:apikey $global:computer $global:mypath $freq} -ArgumentList @($cmdCustom,$cpath,$gname,$mhj,$global:apikey,$global:computer,$global:mypath,$freq)
    $global:CopperEggJobs = $global:CopperEggJobs + $j
    $global:CopperEggJobCount++
  }

  Write-Host "Current Running Jobs : $global:CopperEggJobCount"
  $global:CopperEggJobs
}
function Stop-CopperEggMonitor {
  if( $global:CopperEggJobs -eq $null ) {
    Write-Host "No jobs found"
  }
  else {
    foreach( $job in $global:CopperEggJobs ) {
      stop-job -Id $job.Id
      remove-job -Id $job.Id
    }
  }
}
function Remove-AllCopperEgg {
  $Err = $null
  $result = remove-module Start-CopperEggMonitor -ErrorAction SilentlyContinue  -ErrorVariable Err
  $result = remove-module UserDefined -ErrorAction SilentlyContinue  -ErrorVariable Err
  $result = remove-module Initialize-MetricGroups -ErrorAction SilentlyContinue  -ErrorVariable Err
  $result = remove-module Initialize-Dashboards -ErrorAction SilentlyContinue  -ErrorVariable Err
  $result = remove-module CopperEgg -ErrorAction SilentlyContinue  -ErrorVariable Err
}
