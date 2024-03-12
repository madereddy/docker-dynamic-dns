FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9496b3fe80bcd98cf2af63b8cd904fce45554c6632093de0f5adf51a08c07d49

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh