FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0c35d31660ee8ff26c0893f7f1fe5752aea11f036536368791d2854e67112f85

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh