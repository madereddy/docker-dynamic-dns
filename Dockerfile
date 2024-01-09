FROM cgr.dev/chainguard/wolfi-base:latest@sha256:91f3e08712a854ff4a146b7cca7f1b7581f205bc589a06135f51590e00d2990e

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh