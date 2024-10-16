FROM cgr.dev/chainguard/wolfi-base:latest@sha256:19f53c30b929527758a2bf498ccf47512672637a359e037eb6c694f5f07c7624

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh