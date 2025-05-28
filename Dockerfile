FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9077f2e10d6d8083a8c5d732a3f5698414011e39837e8eb83a06402637a67638

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh