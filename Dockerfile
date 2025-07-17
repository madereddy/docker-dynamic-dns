FROM cgr.dev/chainguard/wolfi-base:latest@sha256:2159a11e112eb3336fdd5e390e4d72161d31d14b46686936a44d719d4ec9d906

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh