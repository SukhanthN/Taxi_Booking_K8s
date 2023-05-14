FROM openjdk:8
EXPOSE 8080
ADD target/taxi-booking-1.0.1.jar taxi-booking-1.0.1.jar
ENTRYPOINT ["java", "-jar", "taxi-booking-1.0.1.jar"]
