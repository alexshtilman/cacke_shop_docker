# Docker compose project

This repository contains docker-compose.yml file and instructions how to use docker

## CI/CD process

### install Docker

- `curl -fsSL https://get.docker.com -o get-docker.sh`
- `sh get-docker.sh`
- `sudo gpasswd -a $USER docker`
- `docker volume create portainer_data`
- `docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data --restart always portainer/portainer`
- `http://hostname:9000`

### Create Docker secrets

- `echo "cake_shop_admin" | docker secret create psql_password -`
- `echo "cake_shop_admin" | docker secret create psql_user -`
- `echo "cake_shop" | docker secret create psql_db -`
- `openssl rand -base64 20 | docker secret create jwt_secret_key -`
- `echo "SETUP_KEY" | docker secret create setup_key -`
- `echo "cake_shop" | docker secret create google_client_id -`
- `echo "cake_shop" | docker secret create google_client_secret -`

### Build and tag images

- `docker-compose build`
- `docker tag cake_shop_backend_flask_api gungam/cake_shop_backend_flask_api`

### Run service and push images to repository

- `docker push gungam/cake_shop_backend_flask_rest`
- `docker stack deploy -c docker-compose.yml cake_shop`

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
