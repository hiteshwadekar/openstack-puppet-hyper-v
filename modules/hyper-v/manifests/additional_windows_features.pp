class install_features {
  exec { 'rsat':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature RSAT',
  }
  exec { 'dot_net':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature Net-Framework-features',
  }
  exec { 'remote_destkop':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature Remote-Desktop-Services',
  }
  exec { 'file_services':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature File-Services',
  }
  exec { 'server_gui_mgmt':
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature Server-Gui-Mgmt-Infra',
  }

}
