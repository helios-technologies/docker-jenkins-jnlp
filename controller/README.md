Jenkins JNLP slave with various tools to control Clouds
=======================================================

Start a Jenkins slave using JNLP with various tools to control Clouds infrastructures

It contains:
- awscli
- gcloud
- kubectl
- docker client

## Start a slave

   `docker run -d heliostech/jenkins-jnlp-controller -url http://jenkins-server:port <secret> <slave name>`

## Following docker clients are available

|Docker version |API version                  |
|---------------|-----------------------------|
|1.11.x         |[1.23](./docker-1.23/)       |
|1.10.x         |[1.22](./docker-1.22/)       |
|1.9.x          |[1.21](./docker-1.21/)       |
|1.8.x          |[1.20](./docker-1.20/)       |
|1.7.x          |[1.19](./docker-1.19/)       |
|1.6.x          |[1.18](./docker-1.18/)       |

## Credits

   This container is part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
