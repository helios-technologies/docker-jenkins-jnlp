Jenkins JNLP slave with various tools to control Clouds
=======================================================

Start a Jenkins slave using JNLP with various tools to control Clouds infrastructures

It contains:
- awscli
- gcloud
- kubectl
- docker client for API version 1.24

## Start a slave

   `docker run -d heliostech/jenkins-jnlp-controller:docker-1.24 -url http://jenkins-server:port <secret> <slave name>`

## Credits

   This container is part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
