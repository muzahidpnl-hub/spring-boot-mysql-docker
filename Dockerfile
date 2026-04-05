# Stage 1: Build the application using Maven image
FROM maven:3.9-eclipse-temurin-17 AS builder
WORKDIR /app

COPY pom.xml .

# Copy source code and build
COPY src src
RUN mvn package -DskipTests

# Stage 2: Create a minimal runtime image
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copy the built jar from the builder stage
COPY --from=builder /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
