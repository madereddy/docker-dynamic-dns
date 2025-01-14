FROM cgr.dev/chainguard/wolfi-base:latest@sha256:52f88fede0eba350de7be98a4a803be5072e5ddcd8b5c7226d3ebbcd126fb388

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh