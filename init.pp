class ntp (
  String $package_name        = $ntp::params::package_name,
  String $package_ensure      = $ntp::params::package_ensure,
  String $config_name         = $ntp::params::config_name,
  String $config_file_mode    = $ntp::params::config_file_mode,
  String $service_ensure      = $ntp::params::service_ensure,
  Array[String] $servers      = $ntp::params::servers,
  Boolean $service_enable     = $ntp::params::service_enable,
  Boolean $service_hasrestart = $ntp::params::service_hasrestart,
  Boolean $service_hasstatus  = $ntp::params::service_hastatus,
  
) inherits ::ntp::params {
  class {'ntp::install':}
   -> class {'ntp::config':}
   ~> class {'ntp::service':}

}
