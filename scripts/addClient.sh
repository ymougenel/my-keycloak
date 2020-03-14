#!/bin/bash

REALM=$1
CLIENT=$2
USER=$2
PASSWORD=$3
ADMIN_USER=$4
ADMIN_PASSWORD=$5
ROLE=$6

/opt/jboss/keycloak/bin/kcadm.sh create clients \
-r $REALM \
-s clientId=$CLIENT \
-s enabled=true \
-s standardFlowEnabled=true \
-s implicitFlowEnabled=true \
-s directAccessGrantsEnabled=true \
-s serviceAccountsEnabled=true \
-s rootUrl="*" \
-s redirectUris='["*"]' \
-s baseUrl="*"
