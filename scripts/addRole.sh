#!/bin/bash

REALM=$1
ROLE=$2
ADMIN_USER=$3
ADMIN_PASSWORD=$4

/opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user $ADMIN_USER --password $ADMIN_PASSWORD

/opt/jboss/keycloak/bin/kcadm.sh create roles -r $REALM -s name=$ROLE
