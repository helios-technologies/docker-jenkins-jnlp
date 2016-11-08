Jenkins JNLP slave with NodeJS
==============================

Start a Jenkins slave using JNLP with Ruby and NodeJS environment.

## Start a slave

   `docker run -d heliostech/jenkins-jnlp-nodejs -url http://jenkins-server:port <secret> <slave name>`

## Credits

   This container is part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
