FROM cgr.dev/chainguard/wolfi-base:latest@sha256:d529f5cd2f4ccd785822ec9332843f178a617fc2db36631f2b679afee41ae21f

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh