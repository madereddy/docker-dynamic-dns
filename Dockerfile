FROM cgr.dev/chainguard/wolfi-base:latest@sha256:0d1673dd55e8b7535fea5191c8337f0c18f46d55ed9020b9dcc1a2e17c550680

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh