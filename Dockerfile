FROM cgr.dev/chainguard/wolfi-base:latest@sha256:4c4a48b87480f65c9600eeda9afc783a54def1d936edde52d1bca11bda885d37

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh