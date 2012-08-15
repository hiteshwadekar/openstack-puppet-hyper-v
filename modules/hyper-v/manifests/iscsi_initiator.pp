class iscsi_enable {
    service { 'MSiSCSI',
      ensure => 'running',
      enable => true,
    }
}
