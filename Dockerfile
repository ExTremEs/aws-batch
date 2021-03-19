# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jre-alpine

# copy the packaged jar file into our docker image
COPY target/aws-batch-sample-1.0-SNAPSHOT.jar /aws-batch-sample.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/aws-batch-sample.jar"]