# Marche Conclu

Marche Conclu connects producers (farmers) and restaurants so they can trade directly.

## Repo Map
- deployment-manifest.yaml — deployment instructions consumed by CI workflows and GitHub secrets to auto-deploy.
- docker-compose.dev.yml — spin up the full dev stack.
- Makefile — shortcuts to run individual services from the compose file.
- config-server — Spring Cloud Config service; self-registers with Eureka and serves configs from the head of `marche-conclu-config`.
- marche-conclu-config — configuration repo consumed by config-server.
- eureka-server — service registry.
- main-gateway-api — edge gateway for the platform.
- services/ — microservice submodules for business domains.
- iwa-mobile-frontend — React Native mobile app.
- keycloak — dev Dockerfile and assets for Keycloak.
- db-init — SQL seeds for development databases.
- util — local dev helper scripts.

## Development
- Start everything: `docker-compose -f docker-compose.dev.yml up`.
- Need just one piece? Use Makefile targets to run individual services from the compose file.
- Services pull config from config-server via Eureka.

## Deployment Notes
- GitHub workflows read `deployment-manifest.yaml` to drive deployments and pull secrets from GitHub.
