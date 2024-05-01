FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2390110a7dcaaa2157420fe97811c9925578a3263405a1614432c88d8d36d1d3

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh