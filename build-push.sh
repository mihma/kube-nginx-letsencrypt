#/bin/bash

docker build --tag mihma/certbot:latest .
echo "docker login before continuing"
read
docker push mihma/certbot:latest
