FROM ondrejmo/you-get

RUN apk add --update bash git gcc make build-base && rm -rf /var/cache/apk/*

RUN git clone https://github.com/rofl0r/proxychains-ng.git \
  && cd proxychains-ng \
  && ./configure --prefix=/usr --sysconfdir=/etc \
  && make && make install

ADD proxychains.conf /etc/
ADD entrypoint.sh /

ONBUILD pip3 install --upgrade you-get
ENTRYPOINT ["/entrypoint.sh"]
