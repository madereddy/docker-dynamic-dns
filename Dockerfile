FROM cgr.dev/chainguard/wolfi-base:latest@sha256:b72df108f3388c82b0638bcfbad1511d85c60593e67fb8f8a968255f7e0588df

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh