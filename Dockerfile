FROM python:3.6-slim-jessie

ENV CONSUL_VERSION=1.0.7
ENV HASHI_CORP_URL=https://releases.hashicorp.com
ENV DOWNLOAD_URL=${HASHI_CORP_URL}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip


RUN apt-get update && apt-get install -y wget curl zip unzip
WORKDIR /consul
RUN wget ${DOWNLOAD_URL} \
    && unzip consul_${CONSUL_VERSION}_linux_amd64.zip \
    && rm -f consul_${CONSUL_VERSION}_linux_amd64.zip

COPY entry-point.sh /consul/
RUN chmod +x ./entry-point.sh

ENTRYPOINT ["./entry-point.sh"]