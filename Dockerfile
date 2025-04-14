FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c519d1c81a18a5c752f701bc59ceddfa4bf1a44e9bb605c73856cef216f69f7b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh