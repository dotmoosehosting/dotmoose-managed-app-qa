FROM nginx:alpine
RUN printf '%s\n' 'DotMoose Managed App Git deployment QA' > /usr/share/nginx/html/index.html \
    && chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /var/log/nginx \
    && touch /var/run/nginx.pid && chown nginx:nginx /var/run/nginx.pid \
    && apk add --no-cache libcap \
    && setcap 'cap_net_bind_service=+ep' /usr/sbin/nginx \
    && apk del libcap
EXPOSE 80
USER nginx
