class openstack-dirs {
  file { 'C:\openstack':
  ensure => directory,
  }

  file { 'C:\openstack\log':
    ensure => directory,
  }

  file { 'C:\openstack\instances':
    ensure => directory,
  }

  file { 'C:\openstack\vhd':
    ensure => directory,
  }
  file { 'C:\openstack\scripts':
    ensure => directory,
  }
}
