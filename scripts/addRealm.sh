#!/bin/bash

REALM=$1
ADMIN_USER=$2
ADMIN_PASSWORD=$3

/opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user $ADMIN_USER --password $ADMIN_PASSWORD

/opt/jboss/keycloak/bin/kcadm.sh create realms -s realm=$REALM -s enabled=true -o
