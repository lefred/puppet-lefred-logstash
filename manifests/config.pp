class logstash::config {
 
 
 file {
    "/etc/logstash/forwarder.crt":
        ensure  => present,
        source  => "puppet:///modules/logstash/forwarder.crt";
    "/etc/logstash/forwarder.key":
        ensure  => present,
        source  => "puppet:///modules/logstash/forwarder.key";
    "/etc/logstash/conf.d/":
        ensure  => directory,
	recurse => true,
        source  => "puppet:///modules/logstash/conf.d/";
  }
  
}  
