FROM maven:3.8.2-jdk-11

COPY ./mastersofjava/javadoc.zip /javadoc.zip
RUN mkdir /javadoc && \
    unzip -q /javadoc.zip "docs/api/*" -d /javadoc && \
    mkdir -p /data/moj-data/javadoc && \
    cp -r /javadoc/docs/api /data/moj-data/javadoc/api

COPY ./repositories/assignments /assignments
COPY ./repositories/mastersofjava /mastersofjava

COPY ./mastersofjava/update-assignments.sh /update-assignments.sh
COPY ./mastersofjava/sort-assignments.patch /sort-assignments.patch

WORKDIR /mastersofjava

RUN bash /update-assignments.sh
RUN git apply --ignore-whitespace /sort-assignments.patch
RUN mvn compile

COPY ./mastersofjava/application.yaml /mastersofjava/src/main/resources/application.yaml

ENTRYPOINT ["mvn", "spring-boot:run"]
