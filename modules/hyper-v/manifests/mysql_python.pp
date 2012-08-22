class hyper-v::mysql_python() {

    file { 'MySQL-python-1.2.3.win32-py2.7.exe':
#        source => 'http://codegood.com/download/10/',
        path   => 'C:\openstack-hyper-v\modules\hyper-v\files\MySQL-python-1.2.3.win32.py2.7.exe',
	ensure => file
    }

    exec { 'MySQL-python_silent_install':
        command => 'C:\openstack-hyper-v\modules\hyper-v\files\MySQL-python-1.2.3.win32.py2.7.exe',
    }
}
