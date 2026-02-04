FROM cgr.dev/chainguard/wolfi-base:latest@sha256:417d791afa234c538bca977fe0f44011d2381e60a9fde44c938bd17b9cc38f66

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh