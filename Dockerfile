FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3490ac41510e17846b30c9ebfc4a323dfdecbd9a35e7b0e4e745a8f496a18f25

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh