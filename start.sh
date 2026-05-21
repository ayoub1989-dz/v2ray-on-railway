#!/bin/sh
mkdir -p /etc/xray
echo "Starting xray on port: ${PORT}"
sed "s/PORT_PLACEHOLDER/${PORT:-8080}/" /etc/xray/config.json.tmpl > /etc/xray/config.json
cat /etc/xray/config.json
exec xray -config /etc/xray/config.json
