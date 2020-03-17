import os
import json
from kapitan.resources import jinja2_render_file
from kapitan.inputs import kadet

inventory = kadet.inventory()


def main():
    path = os.path.dirname(__file__) + "/../../templates"
    output = kadet.BaseObj()
    for variables in inventory.parameters.common:
        nginx_conf = jinja2_render_file([path], "nginx.conf", json.dumps(variables))
        output.root["manifests/default.conf"] = nginx_conf

        index_html = jinja2_render_file([path], "index.html", json.dumps(variables))
        output.root["manifests/html/index.html"] = index_html
        
        start_script = jinja2_render_file([path], "scripts/script.sh", json.dumps(variables))
        output.root["run.sh"] = start_script

        readme = jinja2_render_file([path], "docs/README.md", json.dumps(variables))
        output.root["README.md"] = readme

        for error in variables.server_errors:
            error_page = jinja2_render_file([path], "error.html", json.dumps(error))
            output.root[f"manifests/html/{error.status_code}.html"] = error_page
        
    return output
