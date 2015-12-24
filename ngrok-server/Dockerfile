FROM tutum/ngrok

MAINTAINER bob bob@phpor.me

COPY build.sh /
COPY rootCA.pem /ngrok/assets/client/tls/ngrokroot.crt
COPY device.* /
RUN /build.sh

CMD exec /ngrok/bin/ngrokd -tlsKey=/server.key -tlsCrt=/server.crt -domain="${DOMAIN}" -httpAddr=${HTTP_ADDR} -httpsAddr=${HTTPS_ADDR} -tunnelAddr=${TUNNEL_ADDR}
