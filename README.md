# MERN TODO List App
*Forked from https://github.com/AtharvaKulkarniIT/mern-todo-app*

This is a TODO List application built using the MERN stack (MongoDB, Express.js, React.js, Node.js).

---

# Prerequisites

Before running the application, ensure you have:

- Node.js
- npm
- Docker
- A valid MongoDB URI

Note: MongoDB is NOT inside the container. The application must connect using the provided `MONGODB_URI`.

---

# Setup Instructions

## 1. Install frontend dependencies

```bash
cd TODO/todo_frontend
npm install
```

## 2. Build the frontend

```bash
npm run build
```

## 3. Move the frontend build into backend

```bash
mv build ../todo_backend/static
```

After this step, the structure should be:

```
todo_backend/static/build
```

## 4. Install backend dependencies

```bash
cd ../todo_backend
npm install
```

## 5. Set environment variables

```bash
export PORT=5000
export MONGODB_URI="YOUR_MONGODB_URI"
```

## 6. Run the application

```bash
node server.js
```

## 7. Open the application

```
http://localhost:5000
```

---

# Docker Build

Build the Docker image:

```bash
docker build -t <dockerhub-username>/finead-todo-app:latest .
```

Example:

```bash
docker build -t 6530394/finead-todo-app:latest .
```

---

# Docker Run (Deployment Command)

Run the container:

```bash
docker run -p 8080:5000 \
-e MONGODB_URI="YOUR_MONGODB_URI" \
<dockerhub-username>/finead-todo-app:latest
```

Example:

```bash
docker run -p 8080:5000 \
-e MONGODB_URI="mongodb+srv://example_user:password@cluster.mongodb.net/todo" \
6530394/finead-todo-app:latest
```

Open:

```
http://localhost:8080
```

---

# CI/CD Pipeline

The project uses Jenkins to automate the pipeline with the following stages:

1. Build – install dependencies and build frontend
2. Containerise – build Docker image
3. Push – push image to Docker Hub using Jenkins credentials

---

# Docker Hub Repository

Example:

```
https://hub.docker.com/r/6530394/finead-todo-app
```

---

# Instructor Test Command

```bash
docker run -p 8080:5000 \
-e MONGODB_URI="VALID_MONGODB_URI" \
6530394/finead-todo-app:latest
```