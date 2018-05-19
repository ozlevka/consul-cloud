FROM openjdk:8-jdk

ENV CONTAINERPILOT_VERSION=3.8.0
ENV CONTAINERPILOT_URL="https://github.com/joyent/containerpilot/releases/download/$CONTAINERPILOT_VERSION/containerpilot-$CONTAINERPILOT_VERSION.tar.gz"
ENV JENKINS_VERSION=2.89.3
ENV JENKINS_HOME=/var/jenkins_home

WORKDIR /app

RUN apt-get update && apt-get install -y wget curl zip unzip tar build-essential libltdl7 uuid-runtime python-pip \
    &&  wget -O containerpilot-$CONTAINERPILOT_VERSION.tar.gz $CONTAINERPILOT_URL \
    &&  tar -xzf containerpilot-$CONTAINERPILOT_VERSION.tar.gz -C /usr/bin \
    &&  rm containerpilot-$CONTAINERPILOT_VERSION.tar.gz \
    &&  wget -O jenkins.war http://ftp.yz.yamagata-u.ac.jp/pub/misc/jenkins/war-stable/$JENKINS_VERSION/jenkins.war \
    &&  pip install --upgrade pip


COPY scripts/ /scripts
COPY ansible/ /ansible
COPY config.json5 /app

RUN pip install -r /ansible/dependencies.txt && mkdir -p /var/jenkins-home

ENV JENKINS_HOME=/var/jenkins_home

ENTRYPOINT ["/usr/bin/containerpilot", "-config", "config.json5"]