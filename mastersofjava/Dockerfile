FROM maven:3.8.2-jdk-11

RUN apt-get update && apt-get install -y patch

COPY ./mastersofjava/javadoc.zip /javadoc.zip
RUN mkdir /javadoc && \
    unzip -q /javadoc.zip "docs/api/*" -d /javadoc && \
    mkdir -p /data/moj-data/javadoc && \
    cp -r /javadoc/docs/api /data/moj-data/javadoc/api

COPY ./repositories/assignments /assignments
COPY ./repositories/server /server

COPY ./mastersofjava/update-assignments.sh /update-assignments.sh
COPY ./mastersofjava/sort-assignments.patch /sort-assignments.patch

WORKDIR /server

RUN bash /update-assignments.sh
RUN patch /server/src/main/java/nl/moj/server/assignment/service/AssignmentService.java /sort-assignments.patch
RUN mvn compile

COPY ./mastersofjava/application.yaml /server/src/main/resources/application.yaml

ENTRYPOINT ["mvn", "spring-boot:run"]
