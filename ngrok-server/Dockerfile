FROM tutum/ngrok

MAINTAINER bob bob@phpor.me

COPY device.* /
COPY ngrokd /

CMD exec /ngrokd -tlsKey=/device.key -tlsCrt=/device.crt -domain="${DOMAIN}" -httpAddr=${HTTP_ADDR} -httpsAddr=${HTTPS_ADDR} -tunnelAddr=${TUNNEL_ADDR}

