FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c47abf97153fcba9af42ad9b3627c9db4e5fc0d87bc5e191cbd8f0e9c43616a2

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh