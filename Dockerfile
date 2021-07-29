FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y certbot python curl

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
