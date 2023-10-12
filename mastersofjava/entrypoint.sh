#!/usr/bin/env bash

while ! wget "http://keycloak:8888/realms/moj/.well-known/openid-configuration" -O /dev/null -t 1 -T 5 &>/dev/null; do
    echo "Waiting for Keycloak to start"
    sleep 1
done

socat tcp-listen:8888,reuseaddr,fork tcp:keycloak:8888 &

mvn spring-boot:run
