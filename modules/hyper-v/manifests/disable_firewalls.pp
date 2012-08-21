class hyper-v::disable_firewalls {
  exec { 'disable_all_firewalls':
   path => $winpath,
   command => 'c:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -File c:\openstack-puppet-hyper-v\modules\hyper-v\files\disable_all_firewalls.ps1',
  }
}
