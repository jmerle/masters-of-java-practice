FROM jboss/keycloak:15.0.2

COPY ./repositories/server/src/main/keycloak-template/moj /opt/jboss/keycloak/themes/moj
COPY ./keycloak/keycloak-export.json /keycloak-export.json

ENTRYPOINT ["/opt/jboss/tools/docker-entrypoint.sh", "-Dkeycloak.import=/keycloak-export.json"]
