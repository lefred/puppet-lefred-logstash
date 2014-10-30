class logstash::client::config {
 
 $logstash_server = $logstash::client::server
 
 file {
    "/etc/logstash-forwarder/":
        ensure  => directory;
    "/etc/logstash-forwarder/conf/":
        require => File['/etc/logstash-forwarder'],
        ensure  => "directory";
    "/etc/logstash-forwarder/conf/config.json":
	require => File['/etc/logstash-forwarder/conf/'],
	ensure  => present,
	content => template("logstash/config.json.erb");
    "/etc/logstash-forwarder/forwarder.crt":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.crt";
    "/etc/logstash-forwarder/forwarder.key":
        ensure  => present,
        require => File['/etc/logstash-forwarder'],
        source  => "puppet:///modules/logstash/forwarder.key";
  }
  
}  
