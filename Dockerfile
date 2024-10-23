FROM cgr.dev/chainguard/wolfi-base:latest@sha256:8ece91a71d17ae3792056b3bfa64cb80dfbcb01848b320e446dd632ff9672491

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh