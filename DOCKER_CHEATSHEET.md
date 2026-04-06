# Docker & Docker Compose Cheat Sheet

This document contains a quick reference for the most common Docker and Docker Compose commands used for local development and managing this project.

## 🐳 Docker Compose Commands
Since this project uses a `docker-compose.yml`, you will be using these commands most frequently. Run these from the same directory as your `docker-compose.yml`.

| Command | Description |
| :--- | :--- |
| `docker compose up -d` | Starts all services in the background (detached mode). If images don't exist, it builds them first. |
| `docker compose down` | Stops and removes all containers, networks, and default volumes created by `up`. |
| `docker compose down -v` | Stops and removes containers, AND **deletes all named volumes** (e.g., deletes your database data). |
| `docker compose logs -f` | Views and follows the combined logs for all running services in real-time. |
| `docker compose logs -f app` | Views the logs for a specific service only (e.g., the `app` service). |
| `docker compose ps` | Lists the status and mapped ports of the currently running containers in your compose file. |
| `docker compose build` | Re-builds the images for your services (useful if you changed the `Dockerfile` or source code). |
| `docker compose build --no-cache` | Re-builds images from scratch, ignoring cached layers. |

---

## 📦 Container Commands (Standard Docker)
Used for interacting with individual running containers.

| Command | Description |
| :--- | :--- |
| `docker ps` | Lists all currently *running* containers across your entire system. |
| `docker ps -a` | Lists *all* containers (both running and stopped). |
| `docker stop <container_name>` | Gracefully stops a running container. |
| `docker start <container_name>` | Restarts a stopped container. |
| `docker rm <container_name>` | Deletes a stopped container. Use `-f` to force delete a running one. |
| `docker exec -it <container_name> bash` | Opens an interactive terminal (`bash` or `sh`) *inside* a running container. |

---

## 🖼️ Image Commands
Used for managing the downloaded or built Docker images taking up space on your disk.

| Command | Description |
| :--- | :--- |
| `docker images` | Lists all Docker images currently downloaded or built on your machine. |
| `docker rmi <image_id_or_name>` | Removes an image from your machine. |
| `docker pull <image_name>` | Downloads an image from Docker Hub (e.g., `docker pull mysql:8.0`). |
| `docker build -t <name> .`| Builds a single image from a `Dockerfile` in the current directory and tags it with `<name>`. |

---

## 🧹 System Cleanup (Important!)
Docker can use up a lot of hard drive space over time. These commands help free up space.

| Command | Description |
| :--- | :--- |
| `docker system prune` | ⚠️ Cleans up all stopped containers, dangling (unused) images, and unused networks. |
| `docker system prune -a --volumes` | ⚠️ **NUCLEAR OPTION:** Deletes EVERYTHING not currently attached to a running container, including all volumes and downloaded images. |
| `docker volume ls` | Lists all persistent volumes on your machine. |
| `docker volume rm <volume_name>`| Deletes a specific volume. |
