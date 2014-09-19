class logstash::repository {

 $version = $logstash::version

 case $::osfamily {
    'RedHat': {
			 	yumrepo {
			     		"logstash":
			            		descr       => "Logstash repository for ${version}.x packages",
			            		enabled     => 1,
			            		baseurl     => "http://packages.elasticsearch.org/logstash/${version}/centos",
			                gpgkey      => "http://packages.elasticsearch.org/GPG-KEY-elasticsearch",
			            		gpgcheck    => 1;
				}
    }
    'Debian': {
	      include ::apt
        apt::source {
							"logstash":
								      location	=> "http://packages.elasticsearch.org/logstash/${version}/debian",
								      release		=> "stable",
								      repos		=> "main",
								      key		=> "D88E42B4",
								      key_source	=> false,
								      include_src	=> false
        }

    }  
  }
}
