class hyper-v::greenlet() {

    file { 'greenlet-0.4.0.win32-py2.7.exe':
       path   => 'C:\openstack-hyper-v\modules\hyper-v\files\greenlet-0.4.0.win32-py2.7.exe'
       ensure => file,
    }

    exec {'greenlet_silent_install':
        command => 'C:\openstack-hyper-v\modules\hyper-v\files\greenlet-0.4.0.win32-py2.7.exe',
    }
}
