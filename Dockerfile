FROM cgr.dev/chainguard/wolfi-base:latest@sha256:9c86299eaeb27bfec41728fc56a19fa00656c001c0f01228b203379e5ac3ef28

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh