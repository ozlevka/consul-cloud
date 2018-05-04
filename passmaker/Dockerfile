FROM ubuntu

RUN apt-get update -y && apt-get install -y apache2-utils

COPY make-htpasswd.sh /

ENTRYPOINT ["./make-htpasswd.sh"]