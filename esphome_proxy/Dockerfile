ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx
RUN apk add --no-cache nginx

# Copy root filesystem
COPY rootfs /

# Make scripts executable
RUN chmod a+x /etc/cont-init.d/nginx.sh \
    && chmod a+x /etc/services.d/nginx/run \
    && chmod a+x /etc/services.d/nginx/finish

CMD ["/init"]