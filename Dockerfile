FROM cgr.dev/chainguard/wolfi-base:latest@sha256:4f40641f8e1aaeba87755e96982d9fa9893cfaec6544b11599922f82cf7b0ba8

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh