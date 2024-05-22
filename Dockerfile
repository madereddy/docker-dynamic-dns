FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d8386fa1d2ebddb69689fdb639817004d1ba97ce358e26ff06a8c21e02fc11ae

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh