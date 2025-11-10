FROM cgr.dev/chainguard/wolfi-base:latest@sha256:24ac91003379e86054f230dbd4df85e5051a51eb090a5241aec6c7119cc68cb6

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh