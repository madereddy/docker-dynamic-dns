FROM cgr.dev/chainguard/wolfi-base:latest@sha256:170743b2ef944a17b8002e03aac32019aae6b370401b38e99288cfaac6d1ef70

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh