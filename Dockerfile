FROM cgr.dev/chainguard/wolfi-base:latest@sha256:815b27b8a70713c70404e44a718eddd52ea6f4a2bfad5f56455b52cd2789a9b2

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh