#!/bin/bash
set -e

pip3 install --upgrade you-get

SHADOWSOCKS_IP="$(getent hosts shadowsocks | awk '{print $1}')"
sed -ie "s/SHADOWSOCKS_IP/${SHADOWSOCKS_IP}/g" /etc/proxychains.conf

exec "$@"
