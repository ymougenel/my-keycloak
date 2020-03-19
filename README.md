# my-keycloak
A basic dockerized Keycloak

# How to use it

## Launch it
* Set your parameters in environment-dev.env env_file
* docker-compose up
## Configure it
* Create realm:  `docker exec -it keycloak /bin/bash scripts/addRealm.sh <REALM> <ADMIN_USER> <ADMIN_PASSWORD>`
* Add role: `docker exec -it keycloak /bin/bash scripts/addRole.sh <ROLE> <ADMIN_USER> <ADMIN_PASSWORD>`
* Add user (passwords not set): `docker exec -it keycloak /bin/bash scripts/addUser.sh <ADMIN_USER> <ADMIN_PASSWORD> <ROLE (optionnal)>`

See default_settings.sh script for more details

## Client configuration
* [Public client](https://www.baeldung.com/spring-boot-keycloak)

## References
* [Atadilo](https://github.com/Atadilo/PrezKeycloak)
* [Module client ansible](https://docs.ansible.com/ansible/latest/modules/keycloak_client_module.html#keycloak-client-module)
- [DB connection](https://github.com/keycloak/keycloak-containers/tree/master/docker-compose-examples)
