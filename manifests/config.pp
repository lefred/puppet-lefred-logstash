class logstash::config {
 
 
 file {
    "/etc/logstash/forwarder.crt":
        ensure  => present,
        source  => "puppet:///modules/logstash/forwarder.crt";
    "/etc/logstash/forwarder.key":
        ensure  => present,
        source  => "puppet:///modules/logstash/forwarder.key";
  }
  
}  
