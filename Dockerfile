FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e3ce0a3bb47aefa02647e0bb6cdfb29a5a872e755660be73c9dd7b9578844258

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh