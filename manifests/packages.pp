class logstash::packages {

  $packs  = [ "logstash", "logstash-contrib" ]
  
  case $::osfamily {
          'RedHat': {
                $require = [ Yumrepo['logstash'], Package["$elasticsearch::packages::packs"] ]
          }
          'Debian': {
                $require = [ Apt::Source['logstash'], Package["$elasticsearch::packages::packs"] ]
          }
  }
  package {
    $packs:
        require => $require,
        ensure  => "latest";
  } 

  
}