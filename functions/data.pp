function nginx::data {
  $base_params = {
    'nginx::ensure'         => 'present',
    'nginx::service_enable' => true,
    'nginx::service_ensure' => 'running',
    'nginx::site_name'      => 'example3',
    'nginx::site_domain'    => 'example3.com',
    'nginx::standard_port'  => true,
  }
  case $facts['os']['family'] { 
    'Debian': {
      $os_params = {
        'nginx::package_name' => 'nginx',
        'nginx::service_name' => 'nginx',
      } 
    }
    'RedHat': {
      $os_params = {
        'nginx::package_name' => 'nginx',
        'nginx::service_name' => 'nginx',
      }
    }
    default: {
      fail("${facts['operatingsystem']} is not supported")
    }
  }
 $base_params + $os_params
}

