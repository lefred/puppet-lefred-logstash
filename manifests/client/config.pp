class logstash::client::config {
  
 file {
    "/etc/logstash-forwarder":
        ensure  => directory;
    "/etc/logstash-forwarder/conf":
        ensure  => directory,
        require => File['/etc/logstash-forwarder'];
    "/etc/logstash-forwarder/forwarder.crt":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.crt";
    "/etc/logstash-forwarder/forwarder.key":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.key";
    "/etc/logstash-forwarder/conf/":
        require => File['/etc/logstash-forwarder'],
        ensure  => "directory"";
  }
  
}  
