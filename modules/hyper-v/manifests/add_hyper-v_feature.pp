class install_features {
  exec { 'hyperv',
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature Hyper-V',
  }
  exec { 'hyperv_mgmt',
   command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Install-Windows-Feature RSAT-Hyper-V-Tools',
  }


}
