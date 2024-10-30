FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0c1bf69476e3ca3d4763ca3067773e8796a1faecd56678a3b748cd90cfb9b9a5

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh