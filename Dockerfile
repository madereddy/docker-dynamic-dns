FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0cac3831501d73b388a1bd0e8ef7f26f07aa0c5d6117b1d15af517a91a1f894b

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh