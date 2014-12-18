class logstash::client ($logstash_server="localhost") {

  include logstash::client::config
  include logstash::client::packages
  
}
