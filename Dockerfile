FROM ubuntu:20.04
WORKDIR /app
RUN apt update -y
RUN apt install openjdk-17-jdk -y
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java","-jar","/app/app.war"]
