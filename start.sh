#!/usr/bin/env bash
set -e

nginx -c "$PWD/nginx.conf" &
flask run --port 8081 &

wait -n
