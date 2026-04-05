ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nginx \
    && mkdir -p /etc/nginx/servers \
    && mkdir -p /run/nginx

COPY rootfs /

RUN chmod a+x /etc/cont-init.d/nginx.sh

CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]