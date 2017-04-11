#!/usr/bin/env bash

LOCAL_LOCATION="oidc"#change it to path for which all rquests must be reverse proxied
LOCAL_PORT="9000"# change it to application port

MYIP="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep '10.0')" # change grep 10.0 to local range
echo $MYIP
cat nginx.conf.template | sed s/IP_ADDRESS/$MYIP/ | sed s/LOCAL_LOCATION/$LOCAL_LOCATION/ | sed s/LOCAL_PORT/$LOCAL_PORT/ > nginx.conf

docker stop nginx-rev
docker rm nginx-rev
docker build -t ajitchahal/nginx_reverse_proxy .
docker run -d -p 80:80 -p 443:443 --name nginx-rev ajitchahal/nginx_reverse_proxy
docker ps -a
docker logs nginx-rev
