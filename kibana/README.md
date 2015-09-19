## To access kibana

    asumming you have the docker stack up and using using ./sh run_dockers.sh
    you just have to open a browser in http://localhost:5601
    
    There is some trouble finding the logs of logstash in kibana, I didn't 
    have time to put much attention in logstash, it works as the base article
    suposedly, however, if you put '*' when Kibana is
    asking you for an index to start searching you will be able to find
    the RSS persisted in Elastic Search when the nodeapi runs for the first
    time, so you can start using Kibana.


