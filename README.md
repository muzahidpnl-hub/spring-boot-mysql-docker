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

## 🐳 Run MySQL using Docker

docker run -d \
  --name mysql-db \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=testdb \
  -p 3308:3306 \
  mysql:8

---

## ⚙️ Application Configuration

spring.datasource.url=jdbc:mysql://localhost:3308/testdb  
spring.datasource.username=root  
spring.datasource.password=root  

spring.jpa.hibernate.ddl-auto=update  
spring.jpa.show-sql=true  

---

## ▶️ Run the Application

mvn spring-boot:run

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
