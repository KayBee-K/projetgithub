FROM maven
COPY target/calculatord-0.0.1-SNAPSHOT.jar app.jar
CMD ["jave","-jar","app.jar"]
