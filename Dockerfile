FROM openjdk:8
COPY target/taxi-booking-1.0.1.jar taxi-booking-1.0.1.jar
CMD ["java", "-jar", "taxi-booking-1.0.1.jar"]