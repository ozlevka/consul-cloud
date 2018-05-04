FROM nginx

COPY server.conf entrypoint.sh /
RUN chmod 0755 /entrypoint.sh
COPY .htpasswd /etc/nginx/.htpasswd

ENTRYPOINT ["./entrypoint.sh"]