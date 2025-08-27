FROM cgr.dev/chainguard/wolfi-base:latest@sha256:202dc2241806cbce4472fd287d8e87eb8bd38585d6f8946deeb30672e1c2dc84

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh