class firewall-disable {
  exec { 'fw-disable',
    command => 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -executionpolicy remotesigned Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False',
  }
}
