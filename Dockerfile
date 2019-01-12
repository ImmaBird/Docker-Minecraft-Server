FROM java:8-jre-alpine

WORKDIR /server

COPY files /files

ENTRYPOINT [ "/files/start-server" ]