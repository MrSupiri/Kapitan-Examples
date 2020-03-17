#!/bin/bash
docker rm -f docker-nginx-{{env}}
docker run --name docker-nginx-{{env}} -p 8080:{{port}}  -it -v "$(pwd)"/compiled/{{env}}/{{website_path}}:/usr/share/nginx/html -v "$(pwd)"/compiled/{{env}}/{{nginx_file}}:/etc/nginx/conf.d/default.conf nginx
