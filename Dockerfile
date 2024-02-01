FROM cgr.dev/chainguard/wolfi-base:latest@sha256:fea6eed46b4e4bfcb3632dbac2e34c0b1eb202385fe0c5065278530e4f8d7cff

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh