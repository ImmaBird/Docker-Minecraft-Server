# Docker-Minecraft-Server
## How to run container
To run this container use the command:
```
docker run --rm -dP -v world:/minecraft immabird/minecraft
```
This will create a docker volume called world that will store all the server files and keep them persistent.

## Retrieving world file
Docker volumes are stored at:
```
/var/lib/docker/volumes/
```
It is not recommended to manually edit volumes from the host machine but this may be usefull information to retrieve a world file.
