FROM alpine:latest
LABEL maintainer="jmm@yavook.de"

ENV TZ=Etc/UTC

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
        tzdata \
    ;

COPY bin /usr/local/bin/
COPY libexec /usr/local/libexec/

CMD [ "kiwi-cron" ]
