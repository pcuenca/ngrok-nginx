#!/bin/sh

cat default.conf | sed -e 's|${BACKEND_URL}|'"${BACKEND_URL}"'|' > /etc/nginx/conf.d/default.conf

service nginx start
sleep infinity
