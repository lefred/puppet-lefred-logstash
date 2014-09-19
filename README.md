module for logstash

The purpose is to use it for kibana

This is how I define it in hiera:

      classes:
          - logstash

      logstash::version:  "1.4"
        
