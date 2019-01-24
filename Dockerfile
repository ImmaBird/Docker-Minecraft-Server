FROM java:8-jre-alpine

WORKDIR /server

COPY files /files

ENTRYPOINT [ "java", "-Xmx6G", "-Xms6G", "-jar", "/files/server.jar", "nogui" ]
