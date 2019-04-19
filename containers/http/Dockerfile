# HTTP Server for Data Centre Fabric
FROM alpine
LABEL maintainer="anton@karneliuk.com"
ENV REFRESHED_AT 2019-04-19

RUN apk update; apk add nginx

RUN mkdir -p /var/www/html/website
RUN mkdir -p /run/nginx

EXPOSE 80

ENTRYPOINT ["nginx"]
