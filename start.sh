#!/bin/sh
echo "Starting xray on port: ${PORT}"
sed "s/PORT_PLACEHOLDER/${PORT:-8880}/" /etc/xray/config.json.tmpl > /etc/xray/config.json
exec xray -config /etc/xray/config.json
