net stop w32time
w32tm /config /manualpeerlist:pool.ntp.org,0x8 /syncfromflags:MANUAL
net start w32time

