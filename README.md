![https://www.augustash.com](http://augustash.s3.amazonaws.com/logos/ash-inline-color-500.png)

[![](https://badge.imagelayers.io/augustash/beanstalkd:latest.svg)](https://imagelayers.io/?images=augustash/beanstalkd:latest 'Get your own badge on imagelayers.io')

**This `beanstalkd` container is not currently aimed at public consumption. It exists as an internal tool for August Ash development and is built upon [Phusion](http://phusion.github.io/baseimage-docker/).**

## Environment Variables

If you need to change how `beanstalkd` runs, the following variables can be overridden:

```bash
BEANSTALKD_LISTEN_ADDR=0.0.0.0
BEANSTALKD_LISTEN_PORT=11300
BEANSTALKD_EXTRA=
```

## Usage

To build the Docker image, clone this repository and from the project directory run:

```bash
docker-compose build
```

Run your new container:

```bash
docker-compose up -d
```
