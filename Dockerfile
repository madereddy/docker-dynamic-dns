FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e38d2c6e36d9ce5ec6aab56bb07c4d0d6dc71866771e40a03b81b22b7a9d5239

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh