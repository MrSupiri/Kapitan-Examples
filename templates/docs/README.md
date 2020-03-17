# Nginx Docs for {{env}}

## Nginx Config

| Variable       | Value              |
| -------------- | ------------------ |
| hostname       | {{hostname}}       |
| port           | {{port}}           |
| enable_charset | {{enable_charset}} |
| html_root      | {{html_root}}      |

### HTTP Error Message

{% if server_errors is defined %}
| HTTP Status Code | Message |
| --------------------- | ----------------- |
{% for error in server_errors %}
| {{error.status_code}} | {{error.message}} |
{% endfor %}
{% endif %}

## Start Script Variable

| Variable     | Value            |
| ------------ | ---------------- |
| website_path | {{website_path}} |
| nginx_file   | {{nginx_file}}   |
| env          | {{env}}          |

## Run

```sh
bash compiled/{{env}}/run.sh
```
