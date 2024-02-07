FROM openjdk:8-alpine
EXPOSE 8080
ADD target/HelloWorld.jar
ENTRYPOINT ["java", "-jar", "/HelloWorld.jar"]


