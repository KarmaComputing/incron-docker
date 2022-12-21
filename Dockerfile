FROM alpine

RUN apk --update upgrade && \
    apk add incron

# Example incrontab
# System tables are (by default) located in /etc/incron.d and may have any names.
RUN echo '/root/emails IN_ALL_EVENTS abcd $@/$# $%' > /etc/incron.d/watches

ADD entrypoint.sh /entrypoint.sh
RUN chmod 750 /entrypoint.sh

ENTRYPOINT /entrypoint.sh
