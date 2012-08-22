class hyper-v::python273 {

    file { 'python-2.7.3.msi':
        path   => 'C:\openstack-hyper-v\modules\hyper-v\files\python-2.7.3.msi',
        ensure => file,
    }

    package { 'Python-2.7.3':
#	source => 'http://www.python.org/ftp/python/2.7.3/python-2.7.3.msi',
    	source   => 'C:\openstack-hyper-v\modules\hyper-v\files\python-2.7.3.msi',
        provider => msi,
        ensure   => installed,
    }
}
