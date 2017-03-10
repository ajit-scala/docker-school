docker rm nginx-rev
docker build -t ajitchahal/nginx_reverse_proxy .
docker run -d -p 80:80 -p 443:443 --link hostpc_ADDR:192.168.178.33 --name nginx-rev ajitchahal/nginx_reverse_proxy
docker ps -a
docker logs nginx-rev