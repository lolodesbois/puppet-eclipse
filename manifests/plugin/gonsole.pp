# Class: eclipse::plugin::gonsole
#
# This class installs the Eclipse plugin gonsole (git console)
#
# Sample Usage:
#
#  include eclipse::plugin::gonsole
#
class eclipse::plugin::gonsole (
  $method   = 'package',
  $ensure   = present
) {

  include eclipse
  include eclipse::params

  $repository = 'http://rherrmann.github.io/gonsole/repository/'
  $iu = 'com.codeaffine.gonsole'

  eclipse::plugin { 'gonsole':
    iu          => $iu,
    method      => $method,
    repository  => $repository
  }

}
