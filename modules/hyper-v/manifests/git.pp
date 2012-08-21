class hyper-v::git {

      exec { 'wget-git':
         command => 'wget.exe -O c:\Git-1.7.11-preview2012710.exe -cv http://code.google.com/p/msysgit/downloads/detail?name=Git-1.7.11-preview20120710.exe&can=2&q=full+installer+official+git',
      }


#    package { "git-1711":
#        source => 'http://code.google.com/p/msysgit/downloads/detail?name=Git-1.7.11-preview20120710.exe&can=2&q=full+installer+official+git',
#        provider => msi,
#        ensure   => installed,
#    }
}

