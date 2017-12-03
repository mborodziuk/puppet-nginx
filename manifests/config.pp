class nginx::config(
  Boolean $standard_port = $::nginx::standard_port,
  String $site_name      = $::nginx::site_name,
  String $site_domain    = $::nginx::site_domain,
 ){
  file { '/etc/nginx/default.d/default':
    ensure => absent,
    }-> 
  file { "/etc/nginx/default.d/${site_domain}": 
    ensure  => file, 
    mode    => '0600', 
    owner   => 'root', 
    group   => 'root', 
    content => template('nginx/vhost.conf.erb'), 
    } 
  file { '/var/www': 
    ensure => directory, 
    mode  => '0755', 
    owner => 'root', 
    group => 'root', 
    } 
  file { "/var/www/${site_name}": 
    source  => 'puppet:///modules/nginx/website', 
    recurse => true,
    require => File['/var/www'],
  }
  nginx::backup { 'backup.sh': 
    hour   => '01',
    minute => '00',
  }

}

