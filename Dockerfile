FROM openjdk:11
COPY ./myapp.jar /usr/app/
WORKDIR /usr/app
ENTRYPOINT ["java","-jar","myapp.jar"]
