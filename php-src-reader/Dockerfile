FROM debian:jessie

RUN apt-get update \
  && apt-get install -y ca-certificates curl libpcre3 librecode0 \
       autoconf file g++ gcc libc-dev make pkg-config re2c \
       libsqlite3-0 libxml2 \
       # tools
       vim ctags git --no-install-recommends \
  && rm -r /var/lib/apt/lists/*

