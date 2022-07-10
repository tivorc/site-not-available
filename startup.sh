#!/bin/sh
envsubst '\${MESSAGE}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf
rm -v /etc/nginx/templates/default.conf.template
exec nginx -g 'daemon off;'
