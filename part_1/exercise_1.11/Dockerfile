FROM amazoncorretto:8-alpine

EXPOSE 8080
WORKDIR /usr/src/app

RUN apk update && apk add git

RUN git clone -n --depth=1 --filter=tree:0 https://github.com/docker-hy/material-applications.git
WORKDIR /usr/src/app/material-applications
RUN git sparse-checkout set --no-cone spring-example-project
RUN git checkout
RUN cd ./spring-example-project
WORKDIR /usr/src/app/material-applications/spring-example-project

RUN ./mvnw package

CMD ["java","-jar","./target/docker-example-1.1.3.jar"]
