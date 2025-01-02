FROM cgr.dev/chainguard/wolfi-base:latest@sha256:8bf768ed267ce58d9fd6584c0b17c1c3fd30e9a85c913808627c4fccafb02a69

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh