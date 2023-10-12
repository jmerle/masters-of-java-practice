FROM azul/zulu-openjdk:10 AS java10
FROM eclipse-temurin:11 AS java11

FROM maven:3.9.4-eclipse-temurin-17 AS java17

COPY --from=java10 /usr/lib/jvm/zulu-10-amd64 /opt/java/10
COPY --from=java11 /opt/java/openjdk /opt/java/11

RUN apt-get update && \
    apt-get install -y unzip socat

COPY ./mastersofjava/javadoc.zip /javadoc.zip
RUN mkdir -p /javadoc && \
    unzip -q /javadoc.zip "docs/api/*" -d /javadoc && \
    mkdir -p /data/javadoc && \
    mv /javadoc/docs/api /data/javadoc/api && \
    rm -rf /javadoc /javadoc.zip

COPY ./repositories/server /server
COPY ./repositories/assignments /data/assignments

RUN rm -f /server/.git
COPY ./.git/modules/repositories/server /server/.git

COPY ./mastersofjava/entrypoint.sh /entrypoint.sh

WORKDIR /server
RUN mvn compile

COPY ./mastersofjava/application.yaml /server/src/main/resources/application.yaml

ENTRYPOINT ["bash", "/entrypoint.sh"]
