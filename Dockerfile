FROM cgr.dev/chainguard/wolfi-base:latest@sha256:7bc3ad6c31262f9556bd2dff1479f7f4ae9842c5fc765618be795bc85a96c97e

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh