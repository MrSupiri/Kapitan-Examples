# Kapitan Example

This example show case how easy it is to have manage 3 nginx servers for dev, stag and prod with different configuration from single source of truth

## Folder Structure

```sh
├── compiled                # This Directory contains all the compiled configurations frp, template each environment
│   ├── dev
│   │   ├── manifests
│   │   │   ├── default.conf
│   │   │   └── html
│   │   │       └── index.html
│   │   ├── README.md
│   │   └── run.sh
│   ├── prod
│   │   ├── manifests
│   │   │   ├── default.conf
│   │   │   └── html
│   │   │       ├── 401.html
│   │   │       ├── 404.html
│   │   │       ├── 500.html
│   │   │       └── index.html
│   │   ├── README.md
│   │   └── run.sh
│   └── staging
│       ├── manifests
│       │   ├── default.conf
│       │   └── html
│       │       └── index.html
│       ├── README.md
│       └── run.sh
├── components
│   └── nginx
│       └── __init__.py     # This File has the code that let Kapita knows how to complie the templetes for each environment
├── inventory
│   ├── classes
│   │   └── common.yml      # This contains all the common variables all envs
│   └── targets
│       ├── dev.yml         # variables for Dev environment
│       ├── prod.yml        # variables for Production environment
│       └── staging.yml     # variables for Staging environment
├── README.md
└── templates               # This Directory contains all the template we need to complie for each environment
    ├── docs
    │   └── README.md
    ├── error.html
    ├── index.html
    ├── nginx.conf
    ├── sample.html
    └── scripts
        └── script.sh

18 directories, 27 files
```
