FROM fluent/fluentd:latest
MAINTAINER dcb9 <bob@phpor.me>
USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH
RUN gem install fluent-plugin-secure-forward fluent-plugin-elasticsearch
