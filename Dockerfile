FROM cgr.dev/chainguard/wolfi-base:latest@sha256:de8e5bd83625801da1ff756f648abd4c65fd9da43fcdb30f67ac78ba86170ca8

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh