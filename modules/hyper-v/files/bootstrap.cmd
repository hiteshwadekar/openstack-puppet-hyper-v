set BOOTSTRAPDIR=C:\openstack\prereq
#set http_proxy=http://YOURPROXY:80

mkdir %BOOTSTRAPDIR%
cd %BOOTSTRAPDIR%

echo -n "Download and Install Python 2.7"
c:\cygwin\bin\wget.exe -cv http://www.python.org/ftp/python/2.7.2/python-2.7.2.msi
msiexec /i %BOOTSRAPDIR%\python-2.7.2.msi /passive

echo -n "Download and install M2crypto"
c:\cygwin\bin\wget.exe -cv http://chandlerproject.org/pub/Projects/MeTooCrypto/M2Crypto-0.21.1.win32-py2.7.msi
msiexec /i %BOOTSTRAPDIR%\M2Crypto-0.21.1.win32-py2.7.msi /passive

echo -n "Download and install libxml2"
c:\cygwin\bin\wget.exe -cv http://users.skynet.be/sbi/libxml-python/binaries/libxml2-python-2.7.7.win32-py2.7.exe

run %BOOTSTRAPDIR%\libxml2-python-2.7.7.win32-py2.7.exe

echo -n " Download and install MySQL-python"
c:\cygwin\bin\wget.exe -cv http://www.codegood.com/download/10/ 
move  index.html MySQL-python-1.2.3.win32-py2.7.exe
run %BOOTSTRAPDIR%\MySQL-python-1.2.3.win32-py2.7.exe

echo -n " Download and install python-setuptools"
c:\cygwin\bin\wget.exe -cv http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11.win32-py2.7.exe#md5=57e1e64f6b7c7f1d2eddfc9746bbaf20
run %BOOTSTRAPDIR%\setuptools-0.6c11.win32-py2.7.exe

c:\cygwin\bin\wget.exe -cv http://www.lfd.uci.edu/~gohlke/pythonlibs/e96y4u5o/lxml-2.3.4.win32-py3.2.exe
run %BOOTSTRAPDIR%\lxml-2.3.4.win32-py3.2.exe

#echo -n " Download and install mingw"
#c:\cygwin\bin\wget.exe -cv http://downloads.sourceforge.net/project/mingw/Installer/mingw-get-inst/mingw-get-inst-20111118/mingw-get-inst-20111118.exe
#run %BOOTSTRAPDIR%\mingw-get-inst-20111118.exe

#echo -n " Download and install swigwin"
#c:\cygwin\bin\wget.exe -cv http://downloads.sourceforge.net/project/swig/swigwin/swigwin-2.0.4/swigwin-2.0.4.zip
#run %BOOTSTRAPDIR%\swigwin-2.0.4.zip
#run %BOOTSTRAPDIR%\swigwin-2.0.4.zip

echo -n "Install python requirements"
c:\Python27\Scripts\easy_install.exe pip pep8 eventlet routes greenlet argparse wsgiref pastedeploy iso8601 mox paste migrate netaddr cheetah carrot tempita suds lockfile boto kombu feedparser greenlet pylint sqlalchemy wmi python-novaclient webob