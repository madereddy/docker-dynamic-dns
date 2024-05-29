FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e9c488a5315bda3d96c204bb4763e5bad81d9e4c4193cfea1e2c64dfcdea14a2

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh