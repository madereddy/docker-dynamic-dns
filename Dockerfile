FROM cgr.dev/chainguard/wolfi-base:latest@sha256:5bab300be31cd472c6f45ba7c059415b0bdeb0a49b32ecc12060394d642fd192

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh