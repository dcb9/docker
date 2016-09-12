FROM alpine:latest

MAINTAINER bob <bob@phpor.me>

RUN apk add --no-cache --virtual .build-deps \
  g++ \
  make \
  curl \

  && mkdir /downloads \
  && cd /downloads \
  && curl -L -o master.zip https://github.com/dccmx/tcproxy/zipball/master/ \
  && unzip master.zip \
  && cd dccmx-tcproxy* \
  && make \
  && mv ./src/tcproxy /bin \
  && rm -rf /downloads \

  && apk del .build-deps
 
EXPOSE 19999
ENTRYPOINT ["tcproxy"]
