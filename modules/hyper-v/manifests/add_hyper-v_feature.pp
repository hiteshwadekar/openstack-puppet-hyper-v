class hyper-v::add_hyper-v_feature {
  exec { 'hyperv':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command {Install-Windows-Feature Hyper-V}',
  }
  exec { 'hyperv_mgmt':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command {Install-Windows-Feature RSAT-Hyper-V-Tools}',
  }
}
