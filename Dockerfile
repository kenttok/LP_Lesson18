FROM alpine:latest
RUN apk --no-cache \
    add --update nginx && \
    rm -rf /var/cache/apk/*
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80/tcp
ENTRYPOINT ["nginx", "-g", "daemon off;"]
