FROM cgr.dev/chainguard/wolfi-base:latest@sha256:4857dbc65f7dbf22dd662370a6b211621eba5550d276a9b2ad2596b666cbbdfe

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh