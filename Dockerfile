FROM cgr.dev/chainguard/wolfi-base:latest@sha256:cdab2937f46d3485a80b1e3b4e4e0dffa510df62c1b2b372c4c047caefd71a2a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh