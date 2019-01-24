# Docker-Minecraft-Server
## How to run container
To run this container use the command:
```
docker run --rm -d -p 25565:25565 -v ~/server:/server immabird/minecraft:1.13.2
```
This will bind `/server` on the host to `/server` in the container, this makes the server files persistent. `/server` on the host is also where the server config files must go before starting the container.

## Retrieving world file
Docker volumes are stored at:
```
/var/lib/docker/volumes/
```
It is not recommended to manually edit volumes from the host machine but this may be usefull information to retrieve a world file.
