FROM node:23-alpine
WORKDIR /app
COPY . .
HEALTHCHECK --interval=30s --timeout=10s --retries=3 CMD curl -f http://localhost:8080/ || exit 1
ENTRYPOINT node server.js
EXPOSE 8080