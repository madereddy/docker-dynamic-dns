FROM cgr.dev/chainguard/wolfi-base:latest@sha256:86976a5ad15ee108dc7bd768e06381e0e94245779f5d979659216c987450f040

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh