class ntp_enable {
   service { 'w32time':
     ensure => 'stop',
   }
   exec { 'set_time_peer':
     command => 'w32tm /config /manualpeerlist:bonehead.ics.mit.edu,0x8 /syncfromflags:MANUAL',
   }
   service { 'w32time':
     ensure => 'running',
     enable => true,
   }
}
