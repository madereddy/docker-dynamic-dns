FROM cgr.dev/chainguard/wolfi-base:latest@sha256:91ed94ec4e72368a9b5113f2ffb1d8e783a91db489011a89d9fad3e3816a75ba

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh