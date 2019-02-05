# Python Dev

Basic image for developing without needing to install python locally.

Comes with `docker-compose.yml` for easily playing with some common
databases.

This assumes you have Docker available and running locally.

[Install Docker](https://docs.docker.com/install/)
* Install the "Docker Desktop" clients
* On Mac: https://docs.docker.com/docker-for-mac/install/
* On Windows: https://docs.docker.com/docker-for-windows/install/
* On Linux: If you're using linux you'll know how to get Docker running...

## Build image locally

You can pull the latest from our public image
`rhoai/python-dev:latest` but if you prefer to build locally:

    docker build -t='rhoai/python-dev' .

## Run locally

If you want to have the databases available, first run:

    docker-compose up -d

To find the name of the network (which should be the same as below but may change):

    docker network ls

Start a new python-dev container and connect to the docker-compose network so you have access to the databases. Ensure the value of `--net` matches the output from previous step.

Decide where you want the code to live on your local machine, mount that as a volume into the container at `/code`.

    docker run -it --rm --net python-dev_default -v /mypath/code:/code rhoai/python-dev:latest

## TODO

* Need to update image to use pyenv instead and preload with some versions
