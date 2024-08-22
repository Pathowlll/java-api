FROM maven:3.9.8-amazoncorretto-21
WORKDIR /code
COPY . /code
RUN mvn clean install -DskipTests=true
EXPOSE 8080
CMD ["java","-jar", "/code/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/code/config.yml"]

ARG DB_HOST
ARG DB_NAME
ARG DB_USERNAME
ARG DB_PASSWORD
ENV DB_HOST ${jdbc:mysql://academy2020.cpc8rvmbbd9k.eu-west-2.rds.amazonaws.com/}
ENV DB_NAME ${employee_PatrykP}
ENV DB_USERNAME ${PatrykP}
ENV DB_PASSWORD ${Personifikacja123!}