# docker-ubuntu

A Dockerfile that produces a Docker Image for Ubuntu.

### Usage

#### Build the image

To create the image `naviat/ubuntu`, execute the following command on the docker-ubuntu folder:

```
$docker build -t naviat/ubuntu .
```

####  Run image

To run a container from this image:

```
$docker run -it --rm --name ubuntu naviat/ubuntu
```

#### Copyright
Copyright (c) 2019 Hai Dam. See [LICENSE](LICENSE) for details.