FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d7032b02de971d3ef61b8e90bbd7c9e16e7889db9391f38ceb5482089dd35c2e

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh