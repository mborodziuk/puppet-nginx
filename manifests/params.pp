class nginx::params {
  $standard_port = true
  case $facts['os']['family'] { 
    'Debian': {
      $package_name = 'nginx'
      $service_name = 'nginx'
      } 
    'RedHat': {
      $package_name = 'nginx'
      $service_name = 'nginx'
      }
    'default': {
      fail("${facts['operatingsystem']} is not supported")
      }
  }
}

