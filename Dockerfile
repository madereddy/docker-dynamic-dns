FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2148be123cd047f10c93e2bc88010d4abba1fc56a367d6287a251099ed5f006a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh