FROM cgr.dev/chainguard/wolfi-base:latest@sha256:4f12c90f259bd273ed698660bc983053c5f4d2d2617beb0d481d4ec43d7cbbbd

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh