# Nginx Docs for dev

## Nginx Config

| Variable       | Value              |
| -------------- | ------------------ |
| hostname       | localhost       |
| port           | 8081           |
| enable_charset | False |
| html_root      | /usr/share/nginx/html      |

### HTTP Error Message


## Start Script Variable

| Variable     | Value            |
| ------------ | ---------------- |
| website_path | manifests/html |
| nginx_file   | manifests/default.conf   |
| env          | dev          |

## Run

```sh
bash compiled/dev/run.sh
```