FROM cgr.dev/chainguard/wolfi-base:latest@sha256:3eff851ab805966c768d2a8107545a96218426cee1e5cc805865505edbe6ce92

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh