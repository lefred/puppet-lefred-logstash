class logstash::client {

  include logstash::client::config
  include logstash::client::packages
  
}
