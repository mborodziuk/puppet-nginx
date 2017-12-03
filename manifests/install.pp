class nginx::install (
  String $package_name = $::nginx::package_name,
  String $ensure       = $::nginx::ensure,
  ){
    package { 'epel-release': ensure => installed, }->
    package { 'httpd': ensure => absent, }->
    package { 'nginx-package':
      ensure	=> $ensure,
      name	=> $package_name,
    }
}

