FROM cgr.dev/chainguard/wolfi-base:latest@sha256:fb9a7aedf73e6eb6c74206e61bcf60298436f4f7ab263d9cf61795097437221f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh