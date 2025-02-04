FROM node:23-alpine
WORKDIR /app
COPY . .
ENTRYPOINT node server.js
EXPOSE 8080