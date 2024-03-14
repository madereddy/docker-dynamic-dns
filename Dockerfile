FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c6064a4b8a3ee16cf99084aa4071057ba2cb168fe83252b493dddf8e72d96b48

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh