Dockerfile
### Stage 1: Build ###
FROM maven:3.8.2-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package

### Stage 2: Run ###
FROM openjdk:11-jre
WORKDIR /app
COPY --from=build /app/target/we45\ SQL\ Injection\ App.jar app.jar
EXPOSE 8080
ENV SPRING_DATASOURCE_URL=jdbc:mysql://db-host:3306/my-database
ENV SPRING_DATASOURCE_USERNAME=db-user
ENV SPRING_DATASOURCE_PASSWORD=db-password
CMD ["java","-jar","app.jar"]
