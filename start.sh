#!/usr/bin/env bash
set -e

flask run --port 8081 &
echo "[***] Waiting for flusk to start"
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:8081/)" != "200" ]]; do sleep 5; done
echo "[***] Starting NGINX"
nginx -c "$PWD/nginx.conf" &
echo "[***] Acceping connections"

wait -n
