FROM cgr.dev/chainguard/wolfi-base:latest@sha256:28f57f6a9fb2478f3a3dd160794831bd0099ec92d0d7b81cd203fae67bcb5339

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh