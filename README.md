Jenkins JNLP slaves recipes with various development environment
================================================================

Start a Jenkins slave using JNLP with various development environments.

## Slave with Oracle Java 8

   `docker run -d heliostech/jenkins-jnlp-java -url http://jenkins-server:port <secret> <slave name>`

## Credits

   Those containers are part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
