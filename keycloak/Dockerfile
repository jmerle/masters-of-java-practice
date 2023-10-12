FROM quay.io/keycloak/keycloak:22.0.4

COPY ./repositories/server/src/main/keycloak-template/moj /opt/keycloak/themes/moj
COPY ./keycloak/realm-export.json /opt/keycloak/data/import/realm-export.json
