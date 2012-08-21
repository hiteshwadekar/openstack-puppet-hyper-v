class hyper-v::enable_iscsi_initiator {
    service { 'MSiSCSI':
      ensure => 'running',
      enable => true,
    }
}
