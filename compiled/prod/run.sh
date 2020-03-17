#!/bin/bash
docker rm -f docker-nginx-prod
docker run --name docker-nginx-prod -p 8080:80  -it -v "$(pwd)"/compiled/prod/manifests/html:/usr/share/nginx/html -v "$(pwd)"/compiled/prod/manifests/default.conf:/etc/nginx/conf.d/default.conf nginx