# How to Docker 101

![Docker](docker.webp)

Simple commands to start with Docker 🐋.

- [How to Docker 101](#how-to-docker-101)
  - [❗ Know before:](#-know-before)
  - [Steps](#steps)
    - [Build:](#build)
    - [Save](#save)
    - [Run (look inside)](#run-look-inside)
    - [Load](#load)
  - [Other commands](#other-commands)
  - [✨ Caveats](#-caveats)

---

## ❗ Know before:

**Image**: a "painting" of your application with everything it needs it to run inside.

**Container**: The thing that holds the image and runs it.

**Dockerfile**: file with description on how to make and image and instructions to change it / run it.

PS: always run with `sudo` or do `sudo su`.

and make sure to install [Docker](https://docs.docker.com/) properlly and be able to run it.

---

## Steps

### Build:
"Builds and image from your code"

`docker build -t app:test .`
> `-t` flag to be able to name the image
>
> `app` is the name of the application
> 
> `test` is a tag to differentiate
>
> `.` directory to find the `Dockerfile`

### Save
"Export and image to an output file"

`docker save -o app-test.tar app:test`
> `-o` flag to be able to name the tar output
>
> `app-test.tar` is the name of the output (in this case a compressed file)
> 
> `app:test` is the name of the image

### Run (look inside)
"Export an image to a tar output file"

`docker run -it app:test sh`
> `-i` allow interaction with the container
>
> `-t` to call the tty (console)
>
> `app:test` is the name of the image
> 
> `sh` to use the shell

### Load
"Imports the image from a tar input file"

`docker load -i app-test.tar`
> `-i` flag to designate the input file
>
> `app:test` is the name of the image

## Other commands
`docker ps` > List running containers

`docker images` > Lists the local images

`docker image rm app:test` > Deletes an image
> use flag `-f` to force it.

PS: always read the docs for more.

## ✨ Caveats
use the script `makeDocker.sh` with tha name of the image to load and export an image.

`./makeDocker.sh app:test`
to make an image `app:test` and save an `app:test.tar`

Any doubts or questions go to [Docker Docs](https://docs.docker.com/) to see the commands and flags.