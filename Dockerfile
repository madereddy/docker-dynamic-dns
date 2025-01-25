FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d7d42af987333417272165a51dd7aed9cfd47067ac701ea927263364b12d64ad

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh