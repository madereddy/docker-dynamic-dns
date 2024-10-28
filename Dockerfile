FROM cgr.dev/chainguard/wolfi-base:latest@sha256:6c1db924abe290996af597ae5095098269d9b17ae7d847f42b6f509e2a699c92

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh