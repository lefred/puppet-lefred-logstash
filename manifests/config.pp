class logstash::config {
 
 
 file {
    "/etc/logstash/forwarder.crt":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.crt";
    "/etc/logstash/forwarder.key":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.key";
  }
  
}  
