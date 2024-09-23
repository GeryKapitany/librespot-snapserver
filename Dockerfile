FROM alpine:3.20.3

ARG LIBRESPOT_VERSION=0.4.2-r4
ARG SNAPCAST_VERSION=0.29.0

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories
RUN apk add --no-cache bash snapcast=${SNAPCAST_VERSION} librespot=${LIBRESPOT_VERSION} sed

COPY run.sh /
CMD ["/run.sh"]

ENV DEVICE_NAME=Snapcast
EXPOSE 1704/tcp 1705/tcp
