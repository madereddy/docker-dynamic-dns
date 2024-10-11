FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1e1f283d9d69a2b08bc6da47f53dc29d64b975dcb1c3d4276a22ff30543142ea

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh