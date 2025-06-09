FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9998e2e0b1cb3cb467817a03cbe4c02f37a5a6bab90640f6e1a69a24b046f17a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh