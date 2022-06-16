# CADDY REDIRECTOR

## Infos
- author : Ph Koenig aka UnclePhil
- date   : 2022
- licence: gplv2

## purpose
These structure generate caddyfile for pure URL redirecting, working in http and https
The idea is an evolution of unclephil/rewriterV4 based only to caddy v2.x 

The idea is to store this in a gitlab repository, and to process some generation pipeline when one of the ./redir/*.conf is changed

## requirements
- csv2json : https://github.com/Andrew4d3/go-csv2json
- tpl : https://github.com/bluebrown/go-template-cli
- some bash tools
    - cat
    - grep
    - curl


