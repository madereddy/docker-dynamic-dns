FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9637e55734cb38e2a5ae6be325900cd0917ee1aa3402a2ff4ab9769e2c7f581a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh