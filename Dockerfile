FROM java:8-jre-alpine

WORKDIR /minecraft

EXPOSE 25565

COPY files .

ENTRYPOINT [ "java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui" ]