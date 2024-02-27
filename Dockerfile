FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3d6dece13cdb5546cd03b20e14f9af354bc1a56ab5a7b47dca3e6c1557211fcf

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh