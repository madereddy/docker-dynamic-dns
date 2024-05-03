FROM cgr.dev/chainguard/wolfi-base:latest@sha256:35c767080978768b86904e6c64845736c3cf05c406299b944dcd24ffe8270df5

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh