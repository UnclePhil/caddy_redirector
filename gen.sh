#!/bin/bash
CADDYHOST=localhost:2019


rm caddyfile
rm redir.csv
cat ./templates/header.txt ./redir/*.conf | grep -v ^\# |grep -v "^[[:blank:]]*$" >redir.csv
csv2json --pretty redir.csv 
cat redir.json |tpl -f ./templates/caddyfile.tpl > caddyfile
curl $CADDYHOST/load \
	-X POST \
	-H "Content-Type: text/caddyfile" \
	--data-binary @caddyfile

echo "READ CONFIG for verification"
curl -L $CADDYHOST/config | jq . 
