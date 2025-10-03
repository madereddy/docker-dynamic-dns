FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3e3a125c18346ee7b95980be96529d39eb9f799e140aab2b02218a1bd67bfb18

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh