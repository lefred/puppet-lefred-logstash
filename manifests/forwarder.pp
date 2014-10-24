class logstash::forwarder {
  
    file {  
     "/etc/conf.d/10-input-lumberjack.conf":
        ensure => present,
        source => "puppet:///modules/logstash/10-input-lumberjack.conf"; 
    }
  
}