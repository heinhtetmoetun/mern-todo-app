FROM node:18-alpine

WORKDIR /usr/src/app

COPY TODO/todo_backend/package*.json ./

RUN npm install

COPY TODO/todo_backend .

EXPOSE 3000

CMD ["node", "server.js"]