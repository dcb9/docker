FROM python:3.5.1

RUN pip3 install shadowsocks

ONBUILD pip3 install --upgrade shadowsocks
EXPOSE 1080
CMD sslocal -s "$SERVER_IP" -p "$SERVER_PORT" -b "0.0.0.0" -l 1080 -k "${PASSWORD:-empty}" -t 600 -m aes-256-cfb
