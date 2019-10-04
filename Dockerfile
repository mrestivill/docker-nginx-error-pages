FROM alpine AS builder
WORKDIR /www
ADD https://github.com/denysvitali/nginx-error-pages/tarball/master /
RUN tar --strip-components=1 -xf /master -C /www/

FROM nginx:mainline-alpine
COPY --from=builder /www/ /usr/share/nginx/html/
