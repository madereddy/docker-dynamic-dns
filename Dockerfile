FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c85f493847f2a370df7f351676bbbbc89096c139394a1dca6a4b05f5f1108d3a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh