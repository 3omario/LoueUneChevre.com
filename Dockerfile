# ---- API ----
FROM node:20-alpine AS api
WORKDIR /app/api
COPY services/api/package.json .
RUN npm install
COPY services/api/src ./src
EXPOSE 3001
CMD ["node", "src/server.js"]
