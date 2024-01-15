FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2e17912a5f4665ad2a0b85caf242d5a412bc4d18a5850bfc8245367b545ca7d3

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh