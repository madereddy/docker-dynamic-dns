FROM cgr.dev/chainguard/wolfi-base:latest@sha256:1cdb7345dcef1501e6b70e10b5f0aeb7b38e4bf1dda3d52cf80fdfb717501927

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh