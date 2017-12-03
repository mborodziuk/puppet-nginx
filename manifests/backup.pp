define nginx::backup(
    String $hour   = '00',
    String $minute = '00',
    ) {
      file { '/scripts':
        ensure => directory,
        mode  => '0755',
        owner => 'root',
        group => 'root',
      }->
      file { "/scripts/${name}":
        source => "puppet:///modules/nginx/scripts/${name}",
        mode   => '0755',
      }->
      cron { "Run ${name}":
        command => "/scripts/${name}",
        hour    => $hour,
        minute  => $minute,
      }
  }

