FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c1eae10707f1af4f3864f978e609c7c89d4b29edacb30c1eba3745691bc25b27

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh