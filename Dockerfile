FROM cgr.dev/chainguard/wolfi-base:latest@sha256:ae238a181d95804645919b2671d50ae77477efbfb299544491346e2911125aaf

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh