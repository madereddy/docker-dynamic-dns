FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9608820b6ea4da8bcf16989dac37a280f8f1fa0022efc45b5ed4b1ac1f634a79

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh