FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2903fde551f9cd973aa7511653ff82f60dceedd4d56e4c2e1af390c4dfb939d0

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh