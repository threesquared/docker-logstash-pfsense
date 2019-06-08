FROM docker.elastic.co/logstash/logstash:7.1.1

LABEL maintainer="Ben Speakman <ben@3sq.re>"

RUN logstash-plugin install logstash-output-influxdb

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
COPY pipeline/ /usr/share/logstash/pipeline/
COPY config/ /usr/share/logstash/config/
