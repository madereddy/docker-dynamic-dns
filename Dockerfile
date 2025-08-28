FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c15643c480330cc703bc100378c97b51dbc7c6480ab335b926945f2d24ed878b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh