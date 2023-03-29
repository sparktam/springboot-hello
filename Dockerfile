FROM openjdk:8-jre-alpine3.9

RUN apk --update add tzdata && \
    apk add curl && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*
COPY ./deploy/mc /usr/bin/mc 
RUN chmod +x /usr/bin/mc && touch /tmp/dumpfile
COPY ./deploy/minio.sh /minio.sh

COPY ./target/*.jar /app.jar
COPY ./deploy/startup.sh /startup.sh

CMD ["sh","/startup.sh"]