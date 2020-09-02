# Docker compose project

This repository contains docker-compose.yml file and instructions how to use docker

## CI/CD process

### Create Docker secrets

- `echo "cake_shop_admin" | docker secret create psql_password -`
- `echo "cake_shop_admin" | docker secret create psql_user -`
- `echo "cake_shop" | docker secret create psql_db -`
- `openssl rand -base64 20 | docker secret create jwt_secret_key -`
- `echo "SETUP_KEY" | docker secret create setup_key -`

### Build and tag images

- `docker-compose build`
- `docker tag cake_shop_frontend_react_rest 127.0.0.1:5001/cake_shop_frontend_react_rest`
- `docker tag cake_shop_backend_flask_api 127.0.0.1:5001/cake_shop_backend_flask_api`

### Run service and push images to repository

- `docker stack deploy -c docker-compose.yml cake_shop`
- `docker push 127.0.0.1:5001/cake_shop_frontend_react_rest`
- `docker push 127.0.0.1:5001/cake_shop_backend_flask_api`

- installation
- common commands
- run commands
- networks
- images
- volumes
- Dockerfile
- docker-compose
- docker service
- docker swarm
- docker stack
