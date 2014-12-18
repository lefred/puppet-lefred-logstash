class logstash::client::syslog {
 
 
 file {
    "/etc/logstash-forwarder/conf/syslog.json":
        require => File['/etc/logstash-forwarder/conf'],
        ensure  => "present",
	isource  => "puppet:///modules/logstash/clients/syslog.json";
 	notify  => Service['logstash-forwarder'];
  }
  
}  
