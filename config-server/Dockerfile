# docker build -t vxkudire/config-server:0.0 .
FROM maven:3.9-eclipse-temurin-21 AS build
ENV APP_HOME=/app
WORKDIR $APP_HOME

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
