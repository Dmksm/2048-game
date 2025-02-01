FROM ubuntu:18.04
WORKDIR /app
COPY . .
RUN apt update -y && apt install nodejs -y
ENTRYPOINT node server.js
EXPOSE 8080