FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5cb6b2e19db57ed06599c833cb05319a6a91e18816bab90a1154574de20c3822

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh