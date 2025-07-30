FROM cgr.dev/chainguard/wolfi-base:latest@sha256:00e7fc48700a2ed524e075a78adaf1a278050f9b711bb789e8d3fc50ece6c57a

RUN apk update && apk add bash wget

COPY no-ip.sh /no-ip.sh
CMD /bin/bash /no-ip.sh