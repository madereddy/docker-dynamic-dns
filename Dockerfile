FROM cgr.dev/chainguard/wolfi-base:latest@sha256:602525a5e85f0b3a6196dd5a47b8e91a1f0f89d7bd3223b2dce54a6b36e2b1ef

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh