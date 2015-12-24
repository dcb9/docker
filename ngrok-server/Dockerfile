FROM tutum/ngrok

MAINTAINER bob bob@phpor.me

COPY device.* /
RUN cd /ngrok; make release-server; make release-server

CMD exec /ngrok/bin/ngrokd -tlsKey=/device.key -tlsCrt=/device.crt -domain="${DOMAIN}" -httpAddr=${HTTP_ADDR} -httpsAddr=${HTTPS_ADDR} -tunnelAddr=${TUNNEL_ADDR}
