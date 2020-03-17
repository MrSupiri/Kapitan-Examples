#!/bin/bash
docker rm -f docker-nginx-dev
docker run --name docker-nginx-dev -p 8080:8081  -it -v "$(pwd)"/compiled/dev/manifests/html:/usr/share/nginx/html -v "$(pwd)"/compiled/dev/manifests/default.conf:/etc/nginx/conf.d/default.conf nginx