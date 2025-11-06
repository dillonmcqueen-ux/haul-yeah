# simple Node dockerfile
FROM node:20-slim
WORKDIR /app
COPY server/package.json server/package-lock.json* /app/
RUN npm install --production
COPY server /app
EXPOSE 4000
CMD ["node","server.js"]
