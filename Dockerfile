FROM ubuntu:20.04
WORKDIR /app
COPY . /app
RUN mvn clean install 
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java" ,"-jar" ,"/app/app.war"]
