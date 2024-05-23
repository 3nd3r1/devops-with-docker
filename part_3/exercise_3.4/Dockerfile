FROM docker:26-cli

ENV DOCKER_USER=""
ENV DOCKER_PWD=""

VOLUME /var/run/docker.sock

WORKDIR /var/app
COPY ./builder.sh /var/app/builder.sh

RUN apk update && apk add bash git

ENTRYPOINT ["bash", "builder.sh"]
