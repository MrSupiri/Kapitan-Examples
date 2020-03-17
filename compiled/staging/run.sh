#!/bin/bash
docker rm -f docker-nginx-staging
docker run --name docker-nginx-staging -p 8080:8080  -it -v "$(pwd)"/compiled/staging/manifests/html:/usr/share/nginx/html -v "$(pwd)"/compiled/staging/manifests/default.conf:/etc/nginx/conf.d/default.conf nginx