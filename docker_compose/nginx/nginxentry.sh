#!/bin/bash

if [ "$1" = 'nginx' ]; then

IFS=,
>webservers

for i in $WEB_SERVERS
do 
echo "      server $i:8080;" >> webservers
done

IFS=
sed '/ip_hash;/r webservers' /etc/nginx/nginx.conf  > nginx.conf
fi

mv nginx.conf /etc/nginx/nginx.conf
exec "$@"

