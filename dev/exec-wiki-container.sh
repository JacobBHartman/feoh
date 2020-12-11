sudo docker exec -it $(sudo docker container ls | grep mediawiki | awk '{print $1}') /bin/sh
