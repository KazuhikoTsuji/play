FROM alpine:3.8.5

RUN apk add --update nginx && rm -rf /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080 8081
ENTRYPOINT ["nginx","-g","daemon off;"]
