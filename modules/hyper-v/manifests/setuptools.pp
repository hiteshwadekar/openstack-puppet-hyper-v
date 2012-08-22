class hyper-v::setuptools {

    file { 'setuptools-0.6c11.win32-py.exe':
        path   => 'C:\openstack-hyper-v\modules\hyper-v\files\setuptools-0.6c11.win32-py2.7.exe',
        ensure => file,
   }

    exec { 'setuptools_silent_install':
#	source => 'http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11.win32-py2.7.exe',
        command   => 'C:\openstack-hyper-v\modules\hyper-v\files\setuptools-0.6c11.win32-py2.7.exe',
    }
}
