# Nginx Docs for staging

## Nginx Config

| Variable       | Value              |
| -------------- | ------------------ |
| hostname       | localhost       |
| port           | 8080           |
| enable_charset | False |
| html_root      | /usr/share/nginx/html      |

### HTTP Error Message


## Start Script Variable

| Variable     | Value            |
| ------------ | ---------------- |
| website_path | manifests/html |
| nginx_file   | manifests/default.conf   |
| env          | staging          |

## Run

```sh
bash compiled/staging/run.sh
```