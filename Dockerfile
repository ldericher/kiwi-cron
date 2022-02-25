FROM alpine:latest

RUN set -ex; \
    \
    mkdir -pm 755 /kiwi-cron; \
    cd /kiwi-cron; \
    mkdir -pm 755 \
        every/5_minutes \
        every/15_minutes \
        hourly \
        daily \
        weekly \
        monthly \
        yearly \
    ; \
    \
    apk --no-cache add \
        docker-cli \
    ;

COPY kiwi-cron /usr/local/bin/

CMD [ "kiwi-cron" ]