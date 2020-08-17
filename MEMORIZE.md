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

Позволяет запускать несколько контейнеров сразу файлик docker-compose.yml
запуск

```bash
docker-compose up
```

запуск на пересборку

```bash
docker-compose -build
```

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
