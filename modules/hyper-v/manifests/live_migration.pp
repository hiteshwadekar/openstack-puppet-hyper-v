class live_migration {
  exec { 'enable_vm_migration',
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Enable-VMMigration',
  }

  exec { 'set_vm_migration_network',
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned set-VMMigrationNetwork 172.18.2.0',

  }
  exec { 'set_vm_migration_authtype',
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Set-VMHost –VirtualMachineMigrationAuthenticationType Kerberos',

  }

}
