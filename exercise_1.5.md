```console
3nd3r1@github$ docker pull devopsdockeruh/simple-web-service:ubuntu
3nd3r1@github$ docker pull devopsdockeruh/simple-web-service:alpine
3nd3r1@github$ docker images
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
ubuntu                              latest    7af9ba4f0a47   11 days ago   77.9MB
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 years ago   15.7MB
3nd3r1@github$ docker run -it -d --name looper devopsdockeruh/simple-web-service:alpine
3nd3r1@github$ docker exec -it looper sh
3nd3r1@looper$ tail -f ./text.log
2024-04-22 11:37:12 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2024-04-22 11:37:14 +0000 UTC
```
