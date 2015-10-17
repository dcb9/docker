FROM debian:jessie

RUN apt-get update \
  && apt-get install -y ca-certificates curl libpcre3 librecode0 \
       autoconf file g++ gcc libc-dev make pkg-config re2c \
       libsqlite3-0 libxml2 \

       # buildconf: You need autoconf 2.59 or lower to build this version of PHP.
       #    You are currently trying to use 2.69
       #    Most distros have separate autoconf 2.13 or 2.59 packages.
       #    On Debian/Ubuntu both autoconf2.13 and autoconf2.59 packages exist.
       #    Install autoconf2.13 and set the PHP_AUTOCONF env var to
       #    autoconf2.13 and try again.
       autoconf2.13 \

       # tools
       vim ctags git --no-install-recommends \
  && rm -r /var/lib/apt/lists/*

