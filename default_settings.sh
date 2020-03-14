#!/bin/bash

REALM=$1
ADMIN_USER=$2
ADMIN_PASSWORD=$3
ROLES=("USER" "ADMIN")

# Set basic settings for keycloak
docker exec -it keycloak /bin/bash scripts/addRealm.sh $REALM $ADMIN_USER $ADMIN_PASSWORD
for role in "${ROLES[@]}";
do
  docker exec -it keycloak /bin/bash scripts/addRole.sh $REALM $role $ADMIN_USER $ADMIN_PASSWORD
done
docker exec -it keycloak /bin/bash scripts/addUser.sh $REALM user1 password $ADMIN_USER $ADMIN_PASSWORD USER
docker exec -it keycloak /bin/bash scripts/addUser.sh $REALM user2 password $ADMIN_USER $ADMIN_PASSWORD ADMIN
