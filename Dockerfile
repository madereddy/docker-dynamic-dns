FROM cgr.dev/chainguard/wolfi-base:latest@sha256:ede254cdc4b4147ab83d98593a1fe7c7702808efd7aa6d15d053210ecce8ab4c

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh