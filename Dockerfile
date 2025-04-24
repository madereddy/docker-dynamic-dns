FROM cgr.dev/chainguard/wolfi-base:latest@sha256:e1d402d624011d0f4439bfb0d46a3ddc692465103c7234a326e0194953c3cfe0

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh