FROM maven:3.8.1-openjdk-11 as build
WORKDIR /build
COPY . .
RUN mvn package

FROM openjdk:11
ARG PROFILE
ENV PROFILE = $PROFILE
ARG DB
ENV database = $DB
ARG MYSQL_USER
ENV MYSQL_USER = $MYSQL_USER
ARG MYSQL_URL
ENV MYSQL_URL = $MYSQL_URL
ARG MYSQL_PASS
ENV MYSQL_PASS = $MYSQL_PASS
WORKDIR /springapp
COPY --from=build /build/target/spring-petclinic-2.4.5.jar .
ENTRYPOINT ["java"]
CMD ["-jar", "spring-petclinic-2.4.5.jar"]
EXPOSE 8080
