FROM node:4.2.1

RUN apt-get update && \
    apt-get install -y git

RUN mkdir /scripts
COPY entrypoint.sh /scripts/entrypoint.sh

ENTRYPOINT ["/scripts/entrypoint.sh"]
