FROM debian:jessie
RUN apt-get update \
  && apt-get install -y ca-certificates curl gcc libpcre3 libpcre3-dev \
  && curl -fSL "http://nginx.org/download/nginx-1.11.8.tar.gz" -o /usr/src/nginx-1.11.8.tar.gz \
  && tar zxvf /usr/src/nginx-1.11.8.tar.gz -C /usr/src/ \
  && rm /usr/src/nginx-1.11.8.tar.gz
