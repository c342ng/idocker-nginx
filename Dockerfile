FROM debian:jessie
RUN apt-get update \
  && apt-get install -y curl gcc \
  && mkdir -p /usr/src/nginx-1.11.8 \
  && curl -fSL "http://nginx.org/download/nginx-1.11.8.tar.gz" -o /usr/src/nginx-1.11.8.tar.gz \
  && tar zxvf /usr/src/nginx-1.11.8.tar.gz -C /usr/src/nginx-1.11.8 \
  && rm /usr/src/nginx-1.11.8.tar.gz
