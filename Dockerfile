FROM cgr.dev/chainguard/wolfi-base:latest@sha256:77891a12dc762228955294f2207ee1cbd2b127f18dc7c7458203116288dce828

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh