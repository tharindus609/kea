FROM alpine:latest
RUN apk add --no-cache curl
RUN apk add --no-cache bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-2-2/setup.alpine.sh' | bash
RUN apk add kea
RUN mkdir /var/run/kea
ENTRYPOINT ["kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]
