FROM cgr.dev/chainguard/wolfi-base:latest@sha256:274f9fe3078a2f9757516d149a3eee9d227be39925ecdb1a56b0e796882d70a6

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh