Jenkins JNLP slaves recipes with various development environments
=================================================================

Start a Jenkins slave using JNLP with various development environments.

## [Slave with Oracle Java 8](./java/8/oracle/)

   `docker run -d heliostech/jenkins-jnlp-java -url http://jenkins-server:port <secret> <slave name>`

## [Slave with Ruby](./ruby/)

   `docker run -d heliostech/jenkins-jnlp-ruby -url http://jenkins-server:port <secret> <slave name>`

## [Slave with NodeJS](./nodejs/)

   `docker run -d heliostech/jenkins-jnlp-nodejs -url http://jenkins-server:port <secret> <slave name>`

## [Slave with various Cloud tools](./controller/)

   `docker run -d heliostech/jenkins-jnlp-controller -url http://jenkins-server:port <secret> <slave name>`

   Contains:
   - awscli (Amazon Web Services command-line)
   - gcloud (Google Cloud Platform command-line)
   - kubectl (Kubernetes command-line)

## Credits

   Those containers are part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
