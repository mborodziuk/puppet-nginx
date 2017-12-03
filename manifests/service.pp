class nginx::service(
  String $service_name    = $::nginx::service_name,
  String $service_ensure  = $::nginx::service_ensure,
  Boolean $service_enable = $::nginx::service_enable,
  ){
  service { 'nginx-service':
                ensure 		=> $service_ensure,
		name		=> $service_name,
		enable 		=> $service_enable,
		hasstatus 	=> true,
		hasrestart 	=> true,
        }
}

