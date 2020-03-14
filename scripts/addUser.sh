#!/bin/bash

REALM=$1
USER=$2
PASSWORD=$3
ADMIN_USER=$4
ADMIN_PASSWORD=$5
ROLE=$6

/opt/jboss/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080/auth --realm master --user $ADMIN_USER --password $ADMIN_PASSWORD

# Add-user-keycloak requires restart
# /add-user-keycloak.sh -r $REALM -u $USER -p $PASSWORD

/opt/jboss/keycloak/bin/kcadm.sh create users -r $REALM -s username=$USER -s enabled=true -o --fields id,username

if [ ! -z $ROLE ]; then
  /opt/jboss/keycloak/bin/kcadm.sh add-roles -r $REALM --uusername $USER --rolename $ROLE
fi
