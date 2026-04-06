# 🚀 Spring Boot + MySQL + Docker Project

A simple and production-ready backend application built using **Spring Boot**, **MySQL (Dockerized)**, and REST APIs. This project demonstrates how to integrate a Spring Boot application with a MySQL database running inside Docker.

---

## 📌 Features

- RESTful APIs using Spring Boot  
- MySQL database running in Docker container  
- JPA/Hibernate integration  
- CRUD operations (Create, Read, Update, Delete)  
- Clean project structure  
- Easy local setup  

---

## 🛠️ Tech Stack

- Java 17+
- Spring Boot
- Spring Data JPA
- MySQL (Docker)
- Maven
- Docker

---

## 🐳 Running with Docker Compose (Recommended)

This project is fully dockerized! You can start both the Spring Boot application and the MySQL database with a single command:

```bash
docker compose up -d
```

- The API will be available at: **`http://localhost:8081`**
- The MySQL database is mapped to your localhost at port **`3307`** 
  - Database: `demo_db`
  - Username: `root`
  - Password: `rootpassword`

For more details on interacting with the containers, see the **[Docker Cheat Sheet](./DOCKER_CHEATSHEET.md)**.

---

## ⚙️ Local Development Configuration

If you prefer to run the Spring Boot app directly via your IDE or Maven (while using the Dockerized database), use the following configuration in your `application.properties`:

```properties
# Make sure to run the docker db service first
spring.datasource.url=jdbc:mysql://localhost:3307/demo_db?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=rootpassword

spring.jpa.hibernate.ddl-auto=update  
spring.jpa.show-sql=true  
```

## ▶️ Run the Application (Locally)

```bash
mvn spring-boot:run
```

---

## 📡 API Endpoints

POST /users  
GET /users  
GET /users/{id}  
PUT /users/{id}  
DELETE /users/{id}  

---

## 🧾 Sample JSON

{
  "name": "John Doe",
  "email": "john@example.com"
}

---

## 🧪 Sample SQL

INSERT INTO user (name, email) VALUES ('Alice', 'alice@example.com');  
INSERT INTO user (name, email) VALUES ('Bob', 'bob@example.com');  

---

## 📦 Future Enhancements

- Add JWT Security  
- Deploy to Cloud  
- Add Swagger  
- Add Tests  

---

## 📧 Author

Muzahid
