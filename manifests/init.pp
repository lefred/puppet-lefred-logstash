class logstash ($version="1.4") {

  include logstash::repository
  include logstash::packages
  include logstash::config
  
  Class['logstash::repository'] -> Class['logstash::packages'] -> Class['logstash::config']
 
}
