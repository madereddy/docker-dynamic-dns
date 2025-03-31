FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e3daef4eecf6f1cc4f505d6384871208fe8b476252ae92e109f7f8701f275544

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh