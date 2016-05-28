cat /etc/*release
ubuntu images
https://hub.docker.com/_/ubuntu/
use command: docker pull ubuntu , pulls all ubuntu images available for various versions
docker run -it ubuntu:trusty /bin/bash
https://coreos.com/os/docs/latest/getting-started-with-docker.html
#delete all conatiners
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)
docker inspect container id/image name give ip of conatiner+other info
if you Install stuff manually on container running, you must commit changes to image and may be then push changes to dockerhub similar to github.
build file: list of BASE image, all commands and installations etc which is then build to an image via Build command, and may be then pushed to dockerhub e.g. https://docs.docker.com/engine/examples/running_ssh_service/
Container: is a running instance of an image e.g. of ubuntu

docker pull imagename:version or imagename:imagename pulls image to local docker repo like git.
e.g. git pull ubuntu:14.04 or git pull ubuntu:trusty https://hub.docker.com/_/ubuntu/
git pull ubuntu, pulls the latest 16.04 version
Terminal:
one can install SSH daemon via build script or one issue command docker run -i or docker start -i, where i 
-----
simply u build ur image manually or via build script, then upload this image to dockerhub public/private repo, then just use it to run conatiners.
https://coreos.com/os/docs/latest/getting-started-with-docker.html
