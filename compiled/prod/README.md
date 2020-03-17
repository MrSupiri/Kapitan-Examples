# Nginx Docs for prod

## Nginx Config

| Variable       | Value              |
| -------------- | ------------------ |
| hostname       | localhost       |
| port           | 80           |
| enable_charset | True |
| html_root      | /usr/share/nginx/html      |

### HTTP Error Message

| HTTP Status Code | Message |
| --------------------- | ----------------- |
| 500 | Something is wrong with our server check back in a bit |
| 401 | You ain't supposed access this page go away !!! |
| 404 | Sorry, I couldn't find what you are looking for |

## Start Script Variable

| Variable     | Value            |
| ------------ | ---------------- |
| website_path | manifests/html |
| nginx_file   | manifests/default.conf   |
| env          | prod          |

## Run

```sh
bash compiled/prod/run.sh
```