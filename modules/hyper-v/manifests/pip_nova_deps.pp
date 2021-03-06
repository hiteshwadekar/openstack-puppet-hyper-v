class hyper-v::pip_nova_deps {

      file { 'C:\Python27\Scripts\pip.exe':
         ensure => present,
      }

      exec { 'SQLAlchemy':
         command => 'C:\Python27\Scripts\pip.exe install SQLAlchemy',
      }

      exec { 'WebOb':
         command => 'C:\Python27\Scripts\pip.exe install WebOb',
      }

      exec { 'amqplib':
         command => 'C:\Python27\Scripts\pip.exe install amqplib',
      }

      exec { 'anyjson':
         command => 'C:\Python27\Scripts\pip.exe install anyjson',
      }

      exec { 'argparse':
         command => 'C:\Python27\Scripts\pip.exe install argparse',
      }

      exec { 'boto':
         command => 'C:\Python27\Scripts\pip.exe install boto',
      }

      exec { 'carrot':
         command => 'C:\Python27\Scripts\pip.exe install carrot',
      }

      exec { 'cheetah':
         command => 'C:\Python27\Scripts\pip.exe install cheetah',
      }

      exec { 'decorator':
         command => 'C:\Python27\Scripts\pip.exe install decorator',
      }

      exec { 'docutils':
         command => 'C:\Python27\Scripts\pip.exe install docutils',
      }

      exec { 'eventlet':
         command => 'C:\Python27\Scripts\pip.exe install eventlet',
      }

      exec { 'feedparser':
         command => 'C:\Python27\Scripts\pip.exe install feedparser',
      }

      exec { 'glance':
         command => 'C:\Python27\Scripts\pip.exe install glance',
      }

      exec { 'httplib2':
         command => 'C:\Python27\Scripts\pip.exe install httplib2',
      }

      exec { 'ipython':
         command => 'C:\Python27\Scripts\pip.exe install ipython',
      }

      exec { 'iso8601':
         command => 'C:\Python27\Scripts\pip.exe install iso8601',
      }

      exec { 'jinja2':
         command => 'C:\Python27\Scripts\pip.exe install jinja2',
      }

      exec { 'kombu':
         command => 'C:\Python27\Scripts\pip.exe install kombu',
      }

      exec { 'lockfile':
         command => 'C:\Python27\Scripts\pip.exe install lockfile',
      }

      exec { 'logilab-astng':
         command => 'C:\Python27\Scripts\pip.exe install logilab-astng',
      }

      exec { 'logilab-common':
         command => 'C:\Python27\Scripts\pip.exe install logilab-common',
      }

      exec { 'lxml':
         command => 'C:\Python27\Scripts\pip.exe install lxml',
      }

      exec { 'markdown':
         command => 'C:\Python27\Scripts\pip.exe install markdown',
      }

      exec { 'mox':
         command => 'C:\Python27\Scripts\pip.exe install mox',
      }

      exec { 'netaddr':
         command => 'C:\Python27\Scripts\pip.exe install netaddr',
      }

      exec { 'nose':
         command => 'C:\Python27\Scripts\pip.exe install nose',
      }

      exec { 'pastedeploy':
         command => 'C:\Python27\Scripts\pip.exe install pastedeploy',
      }

      exec { 'pep8':
         command => 'C:\Python27\Scripts\pip.exe install pep8',
      }

      exec { 'prettytable':
         command => 'C:\Python27\Scripts\pip.exe install prettytable',
      }

      exec { 'pygments':
         command => 'C:\Python27\Scripts\pip.exe install pygments',
      }

      exec { 'pylint':
         command => 'C:\Python27\Scripts\pip.exe install pylint',
      }

      exec { 'python-novaclient':
         command => 'C:\Python27\Scripts\pip.exe install python-novaclient',
      }

      exec { 'repoze.lru':
         command => 'C:\Python27\Scripts\pip.exe install repoze.lru',
      }

      exec { 'routes':
         command => 'C:\Python27\Scripts\pip.exe install routes',
      }

      exec { 'sphinx':
         command => 'C:\Python27\Scripts\pip.exe install sphinx',
      }

      exec { 'sqlalchemy-migrate':
         command => 'C:\Python27\Scripts\pip.exe install sqlalchemy-migrate',
      }

      exec { 'suds':
         command => 'C:\Python27\Scripts\pip.exe install suds',
      }

      exec { 'tempita':
         command => 'C:\Python27\Scripts\pip.exe install tempita',
      }

      exec { 'wmi':
         command => 'C:\Python27\Scripts\pip.exe install wmi',
      }

      exec { 'wsgiref':
         command => 'C:\Python27\Scripts\pip.exe install wsgiref',
      }

      exec { 'python-cinderclient':

         command => 'C:\Python27\Scripts\pip.exe install python-cinderclient',
      }

}

#
# Placeholder for python-cinderclient
##
