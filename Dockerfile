FROM alpine:latest

RUN set -ex; \
    \
    mkdir /etc/periodic/5min; \
    chmod 755 /etc/periodic/5min;

ENTRYPOINT [ "/usr/sbin/crond" ]
CMD [ "-fd", "8" ]

COPY crontab /var/spool/cron/crontabs/root
