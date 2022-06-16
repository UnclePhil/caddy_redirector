#!/bin/bash



cat ./redir/redir.json |tpl -f ./templates/caddyfile.tpl > caddyfile
curl localhost:2019/load \
	-X POST \
	-H "Content-Type: text/caddyfile" \
	--data-binary @caddyfile

