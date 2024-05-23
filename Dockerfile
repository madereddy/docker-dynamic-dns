FROM cgr.dev/chainguard/wolfi-base:latest@sha256:97a9dd83b120b33159b94f79db90cd51a205363305818f737605354b54311974

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh