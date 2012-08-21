class hyper-v::add_features {
  exec { 'add_all_features':
   path => $winpath,
   command => 'c:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -File c:\openstack-puppet-hyper-v\modules\hyper-v\files\add_features.ps1',
  }
}
