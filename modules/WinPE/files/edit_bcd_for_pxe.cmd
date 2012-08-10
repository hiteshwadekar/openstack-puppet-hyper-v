set BASEDIR=%1
  del /Q etfsboot.com
  move ISO\boot\boot.sdi boot.sdi
  rmdir /S /Q ISO
  dism /Mount-Wim /WimFile:%BASEDIR%\winpe.wim /index:1 /MountDir:%BASEDIR%\mount
  copy %BASEDIR%\mount\Windows\Boot\PXE\pxeboot.n12 pxeboot.n12
  copy %BASEDIR%\mount\Windows\Boot\PXE\bootmgr.exe bootmgr.exe
  copy %BASEDIR%\mount\Windows\System32\bcdedit.exe bcdedit.exe
  dism /Unmount-Wim /MountDir:%BASEDIR%\mount /commit
  rmdir /Q %BASEDIR%\mount
  del /Q BCD
  bcdedit -createstore BCD
  set BCDEDIT=bcdedit -store BCD
  %BCDEDIT% -create {ramdiskoptions} -d "Ramdisk options"
  %BCDEDIT% -set {ramdiskoptions} ramdisksdidevice boot
  %BCDEDIT% -set {ramdiskoptions} ramdisksdipath \Boot\boot.sdi
  for /f "tokens=3" %%a in ('%BCDEDIT% -create -d "Windows PE" -application osloader') do set GUID=%%a
  %BCDEDIT% -set %GUID% systemroot \Windows
  %BCDEDIT% -set %GUID% detecthal Yes
  %BCDEDIT% -set %GUID% winpe Yes
  %BCDEDIT% -set %GUID% osdevice ramdisk=[boot]\Boot\winpe.wim,{ramdiskoptions}
  %BCDEDIT% -set %GUID% device ramdisk=[boot]\Boot\winpe.wim,{ramdiskoptions}
  %BCDEDIT% -create {bootmgr} -d "Windows Boot Manager"
  %BCDEDIT% -set {bootmgr} timeout 30
  %BCDEDIT% -set {bootmgr} displayorder %GUID%
  del /Q bcdedit.exe
