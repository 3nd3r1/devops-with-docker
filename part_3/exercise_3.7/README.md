Unfortunately, I was already using pre-installed alpine images so in this exercise I made Dockerfiles using Debian images to compare the image sizes.

Image sizes with Debian:
```bash
REPOSITORY         TAG       IMAGE ID       CREATED         SIZE
example-backend    debian    9310724c88dd   3 minutes ago   995MB
example-frontend   debian    7d4f3d24fbc4   4 minutes ago   918MB
```

Image sizes with Alpine:
```bash
REPOSITORY         TAG       IMAGE ID       CREATED          SIZE
example-backend    latest    05b0fd1b7a70   29 minutes ago   377MB
example-frontend   latest    ffe5bbe194c1   3 minutes ago    127MB
```

