Jenkins JNLP slave with Oracle Java development environment
===========================================================

Start a Jenkins slave using JNLP with Oracle Java Development Kit (JDK), Maven and Scala SBT.

## Start a slave

   `docker run -d heliostech/jenkins-jnlp-java -url http://jenkins-server:port <secret> <slave name>`

### Inject docker environment to the job
You need the plugin [EnvInject Plugin](https://wiki.jenkins-ci.org/display/JENKINS/EnvInject+Plugin) installed on the jenkins master.

Select "Inject environment variables to the build process" and set the "Properties File Path" to `/etc/docker.properties`

## Credits

   This container is part of [DevStack](https://www.devstack.com/), a project to facilitate DevOps work with continuous integration and deployment environment ready to use.
