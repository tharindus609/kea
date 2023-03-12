FROM alpine:latest as base
RUN apk add --no-cache curl
RUN apk add --no-cache bash
RUN curl -1sLf 'https://dl.cloudsmith.io/public/isc/kea-2-2/setup.alpine.sh' | bash

from base as dhcp4-build
RUN apk add kea-dhcp4
RUN mkdir /var/run/kea
ENTRYPOINT ["kea-dhcp4", "-c", "/etc/kea/kea-dhcp4.conf"]

from base as dhcp6-build
RUN apk add kea-dhcp6
RUN mkdir /var/run/kea
ENTRYPOINT ["kea-dhcp6", "-c", "/etc/kea/kea-dhcp6.conf"]
