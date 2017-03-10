FROM nginx
ENV hostpc=192.168.178.33

RUN mkdir /etc/nginx/logs && touch /etc/nginx/logs/static.log

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./ssl /etc/nginx/ssl
ADD ./html /etc/nginx/html