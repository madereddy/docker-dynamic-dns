FROM cgr.dev/chainguard/wolfi-base:latest@sha256:ddcb4e46542cfa7bedc955be6e8173bc61c64ee48b5267ec0b1cb58a2bf68026

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh