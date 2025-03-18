FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2d4f19f0745468006c13a79325ff4b0d61a2dede3473c7be4ce015ae4982d69a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh