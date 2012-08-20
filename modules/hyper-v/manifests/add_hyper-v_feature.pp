class hyper-v::add_hyper-v_feature {
  exec { 'hyperv':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command {Add-WindowsFeature Hyper-V}',
  }
  exec { 'hyperv_mgmt':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command {Add-WindowsFeature RSAT-Hyper-V-Tools}',
  }
}
