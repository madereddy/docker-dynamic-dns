FROM cgr.dev/chainguard/wolfi-base:latest@sha256:870e094ce4118ea9dcef74f2bc4b745ad3b5439314940f02978d6fe6ef196003

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh