FROM alpine:latest as base
RUN apk add --no-cache curl
RUN apk add --no-cache bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/isc/stork/setup.alpine.sh' | bash
RUN apk add isc-stork-server
ENTRYPOINT ["tail", "-f", "/dev/null"]