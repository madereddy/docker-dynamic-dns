FROM cgr.dev/chainguard/wolfi-base:latest@sha256:b3dd9cf08283b959c6a0a3c833e68b2882a50129930215060154b43ae6a3e81c

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh