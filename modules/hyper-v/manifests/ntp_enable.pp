class hyper-v::ntp_enable {
   service { 'w32time':
     ensure => 'stop',
     enable => true,
   }
   exec { 'set_time_peer':
     command => 'w32tm /config /manualpeerlist:bonehead.ics.mit.edu,0x8 /syncfromflags:MANUAL',
   }
   exec { 'start_time':
     command => 'net start w32time',
   }
}
