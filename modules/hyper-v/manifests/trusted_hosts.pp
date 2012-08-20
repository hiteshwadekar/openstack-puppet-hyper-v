class winrm {
  exec { 'enable_trusted_hosts':
    command => 'winrm set winrm/config/client @{TrustedHosts="*"}',
  }
}
