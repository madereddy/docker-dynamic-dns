FROM cgr.dev/chainguard/wolfi-base:latest@sha256:bf0547b7d8d03e4f43e3e2b91630af5dc560bd91d09b8286148da8ffebd2092a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh