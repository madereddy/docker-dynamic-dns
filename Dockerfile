FROM cgr.dev/chainguard/wolfi-base:latest@sha256:a0bd5b83ce1c3d1051a406cfe885af0268335452bb0454d07f2aba843b5b977f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh