FROM docker.io/bitnami/logstash:7.6.2-debian-10-r42
LABEL maintainer "Bitnami <containers@bitnami.com> (Modified: mskorge)"

ENV HOME="/" \
    OS_ARCH="amd64" \
    OS_FLAVOUR="debian-10" \
    OS_NAME="linux"
    
COPY ./jars/mssql-jdbc-8.2.2.jre8.jar /opt/bitnami/logstash/logstash-core/lib/jars/mssql-jdbc-jre8.jar


EXPOSE 8080

WORKDIR /opt/bitnami/logstash
USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/logstash/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/logstash/run.sh" ]
