FROM centos:7

MAINTAINER Camille Meulien <camille.meulien@gmail.com>

#
# Install Java
#
ENV HOME=/home/jenkins-slave \
    JAVA_HOME=/usr/java/latest \
    MAVEN_VERSION=3.3.9 \
    JAVA_VERSION=8 JAVA_UPDATE=112 JAVA_BUILD=15
ENV JRE_HOME=${JAVA_HOME}/jre

RUN curl -sSLo jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
    --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
    http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
    && rpm -ivh jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
    && rm -f jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm

#
# Install Maven
#
ENV MAVEN_HOME=/usr/share/apache-maven-${MAVEN_VERSION} \
    MAVEN_OPTS=-Duser.home=${HOME}
ENV PATH=${MAVEN_HOME}/bin:${PATH}

RUN curl -sSLo /usr/share/maven.tar.gz \
    http://apache.mirrors.ovh.net/ftp.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && cd /usr/share \
    && tar xvzf maven.tar.gz \
    && rm -f maven.tar.gz

#
# Install Scala SBT
#

ARG SBT_VERSION=0.13.13
ARG SBT_VERSION_MAJOR=0.13
ENV PATH=/usr/share/sbt-launcher-packaging-${SBT_VERSION}/bin:${PATH}

RUN curl -sSLo /usr/share/sbt-${SBT_VERSION}.tgz https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz \
    && cd /usr/share \
    && tar xvf sbt-${SBT_VERSION}.tgz \
    && rm -f sbt-${SBT_VERSION}.tgz \
    && mkdir -p ${HOME}/.sbt/${SBT_VERSION_MAJOR}/plugins/ \
    && echo 'credentials += Credentials(Path.userHome / ".ivy2" / ".credentials")' > ${HOME}/.sbt/${SBT_VERSION_MAJOR}/plugins/credentials.sbt

#
# Install Jenkins remoting jar
#

ARG JENKINS_REMOTING_VERSION=2.62.2
RUN curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${JENKINS_REMOTING_VERSION}/remoting-${JENKINS_REMOTING_VERSION}.jar \
    && useradd -d ${HOME} -m jenkins-slave \
    && chmod 755 /usr/share/jenkins \
    && chmod 644 /usr/share/jenkins/slave.jar

#
# Additional tools & dependencies
#

RUN yum install -y git gzip2 fontconfig strace wget \
    && env | egrep "(JENKINS|JAVA)" > /etc/docker.properties \
    && chown -R jenkins-slave ${HOME}

ARG KAIGARA_VERSION=v0.0.2
RUN wget --quiet https://github.com/mod/kaigara/releases/download/${KAIGARA_VERSION}/kaigara-linux-amd64-${KAIGARA_VERSION}.tar.gz \
    && tar -C /usr/local/bin -xzvf kaigara-linux-amd64-${KAIGARA_VERSION}.tar.gz

COPY ./operations/ /opt/provision/operations/
COPY ./resources /opt/provision/resources/

COPY entrypoint.sh /usr/bin/
RUN chmod 755 /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

USER jenkins-slave
VOLUME ${HOME}
WORKDIR ${HOME}
