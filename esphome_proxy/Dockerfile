ARG BUILD_FROM
FROM $BUILD_FROM

# Install nginx
RUN apk add --no-cache nginx

# Copy root filesystem
COPY rootfs /

# Make s6 scripts executable
RUN chmod a+x /etc/s6-overlay/s6-rc.d/init-nginx/run \
    && chmod a+x /etc/s6-overlay/s6-rc.d/nginx/run \
    && chmod a+x /etc/s6-overlay/s6-rc.d/nginx/finish
