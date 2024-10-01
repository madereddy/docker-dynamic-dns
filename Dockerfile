FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3fb2c86d005ec60f0335ff4b7678480da78014fa9e6432436a9bfd9886f71dea

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh