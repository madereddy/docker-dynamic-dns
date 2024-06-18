FROM cgr.dev/chainguard/wolfi-base:latest@sha256:15baeafa59625db927c7dad45ac76108d1b912486da5e922c61fd27270ca3be1

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh