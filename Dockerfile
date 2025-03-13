FROM cgr.dev/chainguard/wolfi-base:latest@sha256:79884062be1fd5f698859ee4044c6d13729fabeb9eb1f34aacfc6120414f8a91

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh