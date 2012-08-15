class powershell_remoting {
  exec { 'enable_ps_remoting',
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Enable-PSRemoting',
  }
}
