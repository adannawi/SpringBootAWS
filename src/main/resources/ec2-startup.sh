#!/bin/bash
sudo yum -y update
sudo yum -y install java-1.8.0-openjdk
sudo yum install -y git
wget https://services.gradle.org/distributions/gradle-6.7-bin.zip -P /tmp
sudo unzip -d /opt/gradle /tmp/gradle-*.zip
export GRADLE_HOME=/opt/gradle/gradle-6.7
export PATH=${GRADLE_HOME}/bin:${PATH}
cd /home/ec2-user
git clone https://github.com/adannawi/SpringBootAWS.git
cd SpringBootAWS
sudo /opt/gradle/gradle-6.7/bin/gradle clean build -x test
java -jar build/libs/SpringBootAWS-0.0.1-SNAPSHOT.jar