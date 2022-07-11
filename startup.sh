#!/bin/sh
sed -e "s/\${MESSAGE}/$MESSAGE/g" /etc/nginx/templates/default.conf.template > /etc/nginx/http.d/default.conf
rm -v /etc/nginx/templates/default.conf.template
exec nginx -g 'daemon off;'
