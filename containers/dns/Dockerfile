# DNS Container for Data Centre Fabric
FROM alpine:latest
LABEL maintainer="anton@karneliuk.com"
LABEL GitHub="https://github.com/akarneliuk/data_center_fabric"
ENV REFRESHED_AT 2019-04-16

RUN apk update; apk add bind

RUN echo "#!/bin/sh" >> /entrypoint.sh \
  && echo "/usr/sbin/named -f -g" >> /entrypoint.sh
RUN chmod 750 /entrypoint.sh

EXPOSE 53/tcp 53/udp

ENTRYPOINT ["/entrypoint.sh"]
