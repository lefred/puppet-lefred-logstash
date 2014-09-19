class logstash ($version="1.4") {

  include logstash::repository
  include logstash::packages
  
  Class['logstash::repository'] -> Class['logstash::packages']
 
}