FROM nginx:1.19.5-alpine

RUN sed -i -e 's|^\s*index.*;|index index.svg;|g' /etc/nginx/conf.d/default.conf
COPY index.svg /usr/share/nginx/html/index.svg
