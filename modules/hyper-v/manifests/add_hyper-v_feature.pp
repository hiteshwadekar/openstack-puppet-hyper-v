class hyper-v::add_hyper-v_feature {
  exec { 'hyperv':
   path => $winpath,
#   command => 'c:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -File modules\hyper-v\files\hyper-v-role.pp',
   command => 'c:\Windows\sysnative\powershell.exe -executionpolicy remotesigned -Command { Add-WindowsFeature Hyper-V }',
  }
  exec { 'hyperv_mgmt':
   path => $winpath,
   command => 'c:\Windows\sysnative\powershell.exe -executionpolicy remotesigned -Command { Add-WindowsFeature RSAT-Hyper-V-Tools }',
  }
}
