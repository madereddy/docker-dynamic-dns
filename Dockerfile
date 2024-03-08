FROM cgr.dev/chainguard/wolfi-base:latest@sha256:b79923b68a3d7f691f89657eec778908454b19e33d4bcd2c28fc3370fe0862b8

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh