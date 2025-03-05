FROM cgr.dev/chainguard/wolfi-base:latest@sha256:c93d380c88ee4ccfc4a1827b6ea54debd9ff6e69e64deb53bb75471297ae713a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh