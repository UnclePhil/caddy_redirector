# CADDY REDIRECTOR

## Infos
- author : Ph Koenig aka UnclePhil
- date   : 2022
- licence: gplv2

## Purpose
These structure generate caddyfile for pure URL redirecting, working in http and https
The idea is an evolution of unclephil/rewriterV4 based only to caddy v2.x 

The idea is to store this in a gitlab repository, and to process some generation pipeline when one of the ./redir/*.conf is changed

## Requirements

- caddy: https://caddyserver.com

  the default installation will be fine, but if you need it, you can install any plugin

- Ansible (the playbook uses the `ansible.builtin` modules)
- Caddy's admin API enabled and reachable at `http://localhost:2019`

## Ansible

The Ansible playbook replaces `gen.sh`: it reads the `redir/*.conf` files,
generates `caddyfile`, loads it through Caddy's admin API, then displays the
active configuration. Each non-empty, non-comment line must contain a source
host and target URL separated by a comma. A `F,T` header is optional.

Run it from the repository root:

```sh
ansible-playbook site.yml
```

The playbook runs on the local machine by default. Override the Caddy API URL
or TLS email when needed:

```sh
ansible-playbook site.yml \
  -e caddy_admin_api_url=http://localhost:2019 \
  -e caddy_email=koenigphil@gmail.com
```

The reusable role is in `roles/caddy_redirector/`; its defaults can also be
overridden to change the source-file glob or generated Caddyfile path.

## Evolution
- The docker version
- The ansible version
