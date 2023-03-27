# How to Docker 101

🌐 [🇧🇷 Português](README.pt.md)

![Docker](./assets/docker.webp)

Simple commands to start with Docker 🐋.

- [How to Docker 101](#how-to-docker-101)
  - [❗ Concepts](#-concepts)
  - [Steps](#steps)
    - [Build](#build)
    - [Save](#save)
    - [Run (look inside)](#run-look-inside)
    - [Load](#load)
  - [Other commands](#other-commands)
  - [✨ Caveats](#-caveats)

---

## ❗ Concepts

**Image**: a *"painting"* of your application with everything it needs to run inside it.

**Container**: The thing that holds the image and runs it.

**Dockerfile**: file with description on how to make an image and instructions to change it / run it. (See more on [Docker docs](https://docs.docker.com/engine/reference/builder/#format))

PS: always run with `sudo` or do `sudo su` (or [add docker to the sudo group](https://docs.docker.com/engine/install/linux-postinstall/))..

PS2: make sure to install [Docker](https://docs.docker.com/) properly and be able to run it.

*Docker have pre-built images on [DockerHub](https://hub.docker.com/) with pre-installed softwares (like Flask or Node)*

---

## Steps

### Build

"Builds an image (more instructions inside the [Dockerfile](Dockerfile))"

`docker build -t app:test .`
> `-t` flag to name the image
>
> `app` is the name of the application
>
> `test` is a tag to differentiate
>
> `.` directory to find the `Dockerfile`

### Save

"Export an image to an output `.tar` file"

`docker save -o app-test.tar app:test`
> `-o` flag to name the tar output
>
> `app-test.tar` is the name of the output file
>
> `app:test` is the name of the image

### Run (look inside)

"Runs your image on a container and starts the shell inside it"

`docker run -it app:test sh`
> `-i` allow interaction with the container
>
> `-t` calls the tty (console)
>
> `app:test` is the name of the image
>
> `sh` to use the shell

### Load

"Imports the image from a `.tar` input file"

`docker load -i app-test.tar`
> `-i` flag to designate the input file
>
> `app-test.tar` is the name of the tar input file

## Other commands

`docker ps` > List running containers

`docker images` > Lists the local images

`docker image rm app:test` > Deletes an image
> use flag `-f` to force it.

PS: always read the docs for more.

## ✨ Caveats

Use the script:

- [makeDockerImage.sh](./makeDockerImage.sh)
> to create and export an image (run it from the same folder as Dockerfile).

- [makeDockerfile.sh](./makeDockerfile.sh)
> to make a Dockerfile (this runs if makeDockerImage didn't detect a Dockerfile).

Any doubts or questions go to [Docker Docs](https://docs.docker.com/) to see the commands and flags.
