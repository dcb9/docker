FROM daocloud.io/nginx

MAINTAINER bob <bob@phpor.me>

RUN apt-get update \
    && apt-get -y install wget \
        python \
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY letsencrypt.conf /etc/nginx/conf.d/
