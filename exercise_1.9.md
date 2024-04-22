```console
3nd3r1@github$ touch text.log                                                                                                                                              (main)devops-with-docker
3nd3r1@github$ docker run -v "$(pwd)/text.log:/usr/src/app/text.log" -d --name looper devopsdockeruh/simple-web-service:alpine                                             (main)devops-with-docker
```
