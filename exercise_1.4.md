```console
3nd3r1@github$ docker container run -it -d --name looper ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
3nd3r1@github$ docker cp /etc/apt/sources.list looper:/etc/apt/
3nd3r1@github$ docker exec looper sh -c 'apt-get update && apt-get install -y curl'
3nd3r1@github$ docker attach looper
3nd3r1@looper$ helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
```
