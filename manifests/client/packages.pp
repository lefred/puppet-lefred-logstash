class logstash::client::packages {
  
  file {    
    "/usr/bin/logstash-forwarder":
        ensure => present,
        source => "puppet:///modules/logstash/logstash-forwarder";
    "/etc/init.d/logstash-forwarder":
        ensure => present,
        source => "puppet:///modules/logstash/logstash-forwarder.init";
  }
  
  service {
    "logstash-forwarder":
        ensure => running,
	require => [ File['/usr/bin/logstash-forwarder'], File['/etc/init.d/logstash-forwarder'] ],
  }
  
}
