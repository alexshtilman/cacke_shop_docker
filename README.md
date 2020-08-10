# docker comands
## общие команды
   - version  версия докера
   - ps список запущенных контейнеров ( -a все включая остановленные)
   - images - список доступных образов
   - attach <container_id> подключится к выводу контейнера
   - stop <container_name>
   - rm <container_name>
   - pull <image_name:tag>
   - rmi <image_name:tag>
   - inspect <cont_name>  
   - exec <container_name> command
   - logs <container_id> показывает логи
   - history <image> показывает слои
## Запуск контейнера - run   
   - -p external:internal
   - -d запуск в фоне
   - --name <container_name>
   - -e env_name=env_val
   - --memory=<memory>
   - --cpu<.%number>
   - network=<network_name>
   - -i итерактивный режим для ввода данных из консоли
   - -it то же что и -i но с подключением к терминалу
   - -v <external_path>:<internal_path> подключение директорий или <volume_name>:<internal_path> ( var/lib/docker/volumes )
   - --mount type=bind,source=<external_path>,target <internal_path>
## Работа с сетями: networks
По умолчанию создаётся brige, none, host
   - inspect
   - ls
   - create
   - --driver типа дайвера
   - --subnet 182.18.0.0.6/24
   - gateway
   - <network_name>

  
# DockerFile
build -t cont_name . - собирает докер контейенр по DockerFile
   - FROM <image_name:tag>
   - RUN <comand>
   - COPY <FROM> <TO>
   - ENTRYPOIN - первое что вызывается
   - CMD ["comand_1","comand_2"] 
   - WORKDIR <path>
   - VOLIUME ["path_1",...] или <path>
   
# Compose
Позволяет запускать несколько контейнеров сразу файлик docker-compose.yml
запуск docker -compose up
запуск на пересборку odcker-compose -build   
   - version: 1,2,3
   - services: 
     - <service_name>:
       - image: "image_name"
       - depends_on:
         - <service_name>
       - networks:
         - <network_name>
    - networks:
      - <network_name>:
   
