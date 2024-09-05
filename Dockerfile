FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0f1d81605bda6e2388c3c7f731700d8c12e17259d58ffba11f36ddc81d9c0a76

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh