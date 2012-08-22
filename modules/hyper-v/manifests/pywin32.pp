class hyper-v::pywin32 {
    file { 'pywin32-217.win32-py2.7.exe',:
        path   => 'C:\openstack-hyper-v\modules\hyper-v\files\pywin32-217.win32-py2.7.exe'
        ensure => file,
   }

    exec { 'pywin32_silent_install':
#	source => 'http://sourceforge.net/projects/pywin32/files/pywin32/Build%20217/pywin32-217.win32-py2.7.exe',
        command   => 'C:\openstack-hyper-v\modules\hyper-v\files\pywin32-217.win32-py2.7.exe'
    }
}
