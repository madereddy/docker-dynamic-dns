FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d6b37317ae7cb5c0864189e9e5acd825386ae226a413e7c19370f5f87d150f92

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh