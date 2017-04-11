## nginx.conf
1. It defines http and https rewrites to local host and port
2. defines certificates to be used for 443 urls
## rebuild.sh
1. will generate nginx.conf from nginx.conf.template
2. it replaces place holders with local path,  port and ip of the machine.
## Dockerfile
1. creates an image from base nginx image
2. just copies local nginx.conf / web folders to docker instance 
