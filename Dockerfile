FROM cgr.dev/chainguard/wolfi-base:latest@sha256:cb5d1d9d5d562191f7f1c37c2ee21e8a9cdf3d25bf1faa4ac10ee375597ef9db

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh