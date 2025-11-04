FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9b359e55a1d5dcdcab3c0534a5184386ebaa2661f8e24bc27355bc6bdcd7e843

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh