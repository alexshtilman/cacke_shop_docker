# docker commands

## Install

- install from `https://get.docker.com/`
- install docker-compose
- install docker-machine
- install shell zsh `https://www.bretfisher.com/shell/` + `https://ohmyz.sh/`

## Common commands

- `version` version of docker
- `ps -a` list of running and stopped containers
- `images` list of images
- `attach <container_id> -it` connect to container
- `stop <container_name>`
- `rm <container_name>`
- `pull <image_name:tag>`
- `rmi <image_name:tag>`
- `inspect <cont_name>`
- `exec <container_name> command`
- `logs <container_id>`
- `history <image>`
- `stats` displays system load
- `top <container_id>`
- `system/container/images prune -a` clears system/container/images cache
- `tag old new <image>`
- `image history`
- `image push`
- `login`

## Run container - run

- `-p host:container`
- `-d`run in detached mode
- `--name <container_name>`
- `-e env_name=env_val`
- `--memory=<memory>`
- `--cpu<.%number>`
- `network=<network_name>`
- `-i` interactive mod to type from console
- `-it`
- `-v <host_path>:<container_path>` bind volume `<volume_name>:<container_path>`( var/lib/docker/volumes )
- `--mount type=bind,source=<host_path>,target <container_path>`
- `-rm` remove container after it stops
- `-network-alias <name>` give container a common network name
- `${pwd} %cd% $(pwd)` - print work dir

```bash
docker run --name db -e POSTGRES_PASSWORD=mysecretpassword -d postgres
```

## Networks

По умолчанию создаётся brige, none, host

- inspect
- ls
- create
  - --driver типа дайвера
  - --subnet 182.18.0.0.6/24
  - gateway
  - <network_name>

## DockerFile

build -t cont_name . - собирает докер контейенр по DockerFile

- FROM <image_name:tag>
- RUN <command>
- COPY <FROM> <TO>
- ENTRYPOIN - первое что вызывается
- CMD ["comand_1","comand_2"]
- WORKDIR <path>
- VOLUME ["path_1",...] или <path>

## Compose

## Docker Compose and The Docker-compose.yml File

docker-compose.yml

https://docs.docker.com

## Trying Out Basic Compose Commands

pcat docker-compose.yml

docker-compose up

docker-compose up -d

docker-compose logs

docker-compose --help

docker-compose ps

docker-compose top

docker-compose down

## Assignment Answers: Build a Compose File for a Multi-Container Service

docker-compose.yml

docker pull drupal

docker image inspect drupal

docker-compose up

https://hub.docker.com

docker-compose down --help

docker-compose down -v

## Adding Image Building to Compose Files

docker-compose.yml

docker-compose up

docker-compose up --build

docker-compose down

docker image ls

docker-compose down --help

docker image rm nginx-custom

docker image ls

docker-compose up -d

docker image ls

docker-compose down --help

docker-compose down --rmi local

- version: 1,2,3
- services:
  - <service_name>:
    - image: "image_name"
    - depends_on:
      - <service_name>
    - networks:
      - <network_name>
  - networks:
    - <network_name>
- networks:
  - <network_name>:

## Create Your First Service and Scale it Locally

docker info

docker swarm init

docker node ls

docker node --help

docker swarm --help

docker service --help

docker service create alpine ping 8.8.8.8

docker service ls

docker service ps frosty_newton

docker container ls

docker service update TAB COMPLETION --replicas 3

docker service ls

docker service ps frosty_newton

docker update --help

docker service update --help

docker container ls

docker container rm -f frosty_newton.1.TAB COMPLETION

docker service ls

docker service ps frosty_newton

docker service rm frosty_newton

docker service ls

docker container ls

## Creating a 3-Node Swarm Cluster

http://play-with-docker.com

docker info

docker-machine

docker-machine create node1

docker-machine ssh node1

docker-machine env node1

docker info

http://get.docker.com

docker swarm init

docker swarm init --advertise-addr TAB COMPLETION

docker node ls

docker node update --role manager node2

docker node ls

docker swarm join-token manager

docker node ls

docker service create --replicas 3 alpine ping 8.8.8.8

docker service ls

docker node ps

docker node ps node2

docker service ps sleepy_brown

## Scaling Out with Overlay Networking

docker network create --driver overlay mydrupal

docker network ls

docker service create --name psql --netowrk mydrupal -e POSTGRES_PASSWORD=mypass postgres

docker service ls

docker service ps psql

docker container logs psql TAB COMPLETION

docker service create --name drupal --network mydrupal -p 80:80 drupal

docker service ls

watch docker service ls
