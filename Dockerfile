FROM debian:jessie
RUN apt-get update \
  && apt-get install -y ca-certificates curl gcc gettext-base \
          libxslt1.1 libxslt1-dev libpcre3 libpcre3-dev zlib1g zlib1g-dev openssl libssl-dev \
  && curl -fSL "http://nginx.org/download/nginx-1.11.8.tar.gz" -o /usr/src/nginx-1.11.8.tar.gz \
  && tar zxvf /usr/src/nginx-1.11.8.tar.gz -C /usr/src/ \
  && rm /usr/src/nginx-1.11.8.tar.gz \
  && cd /usr/src/nginx-1.11.8 \
  && ./configure --prefix=/opt/nginx \
                  --with-http_stub_status_module \
                  --with-http_ssl_module \
                  --with-http_geoip_module \
                  --with-http_xslt_module \
                  --with-http_perl_module \
                  --with-http_v2_module \
                  --with-http_image_filter_module
                  
