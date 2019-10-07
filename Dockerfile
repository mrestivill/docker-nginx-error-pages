FROM alpine AS builder
WORKDIR /www
ADD https://github.com/glarfs/nginx-error-pages/tarball/master /
RUN tar --strip-components=1 -xf /master -C /www/

FROM nginx:mainline-alpine
RUN sed -i "s#/usr/share/nginx/html;#/usr/share/nginx/html; sub_filter '%{HOSTNAME}' \$host;sub_filter_once off;#g" /etc/nginx/conf.d/default.conf
COPY --from=builder /www/ /usr/share/nginx/html/
