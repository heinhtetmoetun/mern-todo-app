FROM node:18-alpine

WORKDIR /usr/src/app

COPY TODO/todo_backend/package*.json ./

RUN npm install --only=production

COPY TODO/todo_backend .

EXPOSE 5000

CMD ["node", "server.js"]