FROM openjdk:8-alpine
COPY target/*.jar /usr/src/myapp/app.jar
WORKDIR /usr/src/myapp
CMD ["java","-Dlog4j2.formatMsgNoLookups=true","-Xms256m", "-Xmx1024m", "-jar", "app.jar"]