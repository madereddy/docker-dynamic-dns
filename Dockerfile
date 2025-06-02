FROM cgr.dev/chainguard/wolfi-base:latest@sha256:57428116d2d7c27d1d4de4103e19b40bb8d2942ff6dff31b900e55efedeb7e30

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh