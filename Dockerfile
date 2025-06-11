FROM cgr.dev/chainguard/wolfi-base:latest@sha256:688bf72624dff7a8d40dafca8cdcfe2529a982fb888edd3d3d6017e3221d2d16

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh