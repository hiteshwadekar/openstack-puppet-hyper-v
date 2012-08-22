class hyper-v::m2crypto {
    file { 'M2Crypto-0.21.1.win32-py2.7.exe',:
        path   => 'C:\openstack-hyper-v\modules\hyper-v\files\M2Crypto-0.21.1.win32-py2.7.exe',
        ensure => file,
   }

    exec{ 'M2Crypto_silent_install':
#	source => 'http://chandlerproject.org/pub/Project/MeTooCrypto/M2Crypto-0.21.1.win32-py2.7.exe',
        command   => 'C:\openstack-hyper-v\modules\hyper-v\files\M2Crypto-0.21.1.win32-py2.7.exe',
    }
}
