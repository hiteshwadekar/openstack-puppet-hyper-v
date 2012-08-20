class hyper-v::add_hyper-v_feature {
  exec { 'hyperv':
   path => $winpath,
   command => 'C:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command { Add-WindowsFeature Hyper-V }',
  }
  exec { 'hyperv_mgmt':
   path => $winpath,
   command => 'C:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -Command { Add-WindowsFeature RSAT-Hyper-V-Tools }',
  }
}
