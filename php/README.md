# PHP

This is a very simple hello world application in PHP. Click [here](https://hub.docker.com/_/php/) for the PHP repository on Docker Hub.

## Getting Started

1. `docker image build -t hello-world .`
    - This builds the image, and tags it (names it) as `hello-world:latest`.
2. `docker container run -p 80:80 hello-world`
    - This creates a container from the `hello-world` image.
    - Forward port 80 from the host to port 80 in the container.
3. If you want to share the folder between the host and the container, you mount a volume via `-v` or `--volume`:
    - `docker container run -p 80:80 -v /path/to/repo/php/src/:/var/www/html/ hello-world`
    - The path needs to be the absolute/full path; it can't be relative.

You can also name your name by adding the `--name` option to the `docker container run` command. For example:

`docker container run --name hello-world-app -p 80:80 hello-world`

## Acknowledgement

[This tutorial](https://www.youtube.com/watch?v=YFl2mCHdv24) on YouTube helped me out a lot.
