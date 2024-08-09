FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1c7fcbc7d67145b82f8d393eabf43cf12a14e3759f2e42c8cb61799550909a08

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh