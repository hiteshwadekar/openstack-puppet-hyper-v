class install_features {
  exec { 'rsat',
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature Hyper-V',
  }

}
