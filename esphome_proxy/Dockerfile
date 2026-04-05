ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nginx \
    && mkdir -p /etc/nginx/servers

COPY rootfs /

RUN chmod a+x /etc/cont-init.d/nginx.sh \
    && chmod a+x /etc/services.d/nginx/run \
    && chmod a+x /etc/services.d/nginx/finish

CMD ["/init"]