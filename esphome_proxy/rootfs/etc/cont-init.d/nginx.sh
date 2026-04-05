#!/usr/bin/with-contenv bashio

ESPHOME_URL=$(bashio::config 'esphome_url')
ESPHOME_URL="${ESPHOME_URL%/}"
INGRESS_PATH=$(bashio::addon.ingress_entry)

bashio::log.info "ESPHome URL: ${ESPHOME_URL}"
bashio::log.info "Ingress path: ${INGRESS_PATH}"

cat > /etc/nginx/servers/ingress.conf << NGINX
server {
    listen 5000 default_server;

    location / {
        allow 172.30.32.2;
        allow 172.30.32.1;
        deny all;

        proxy_pass ${ESPHOME_URL};
        proxy_set_header X-Ingress-Path ${INGRESS_PATH};
        proxy_set_header Host \$http_host;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection \$connection_upgrade;
        proxy_http_version 1.1;
        proxy_redirect off;
    }
}
NGINX

bashio::log.info "nginx config written."