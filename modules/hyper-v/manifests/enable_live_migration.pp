class hyper-v::enable_live_migration {
  exec { 'shared_nothing_migration':
   path => $winpath,
   command => 'c:\Windows\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned -File c:\openstack-puppet-hyper-v\modules\hyper-v\files\enable_live_migration.ps1',
  }
}
