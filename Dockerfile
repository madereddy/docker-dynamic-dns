FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c6584af9be8d4aad9b3a41ad3fdc520c3a84e14dd9ae1738b054e8b6df8c5194

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh