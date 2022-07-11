FROM alpine:3.16.0

RUN apk update
RUN apk add nginx-mod-http-headers-more

COPY ./dist /usr/share/nginx/html
COPY ./nginx/default.conf.template /etc/nginx/templates/default.conf.template

COPY ./startup.sh /usr/bin/startup.sh
RUN chmod +x /usr/bin/startup.sh

CMD ["startup.sh"]

EXPOSE 80