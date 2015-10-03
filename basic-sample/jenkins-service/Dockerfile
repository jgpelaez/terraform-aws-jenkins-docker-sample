FROM jenkins
ENV MAVEN_VERSION 3.3.3

USER root
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN \
	echo 'git' >> /usr/share/jenkins/plugins.txt && \
	echo 'scm-api' >> /usr/share/jenkins/plugins.txt && \	
	echo 'scm-sync-configuration' >> /usr/share/jenkins/plugins.txt

#https://wiki.jenkins-ci.org/display/JENKINS/Post+build+task
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# this is for the need of calling docker inside
RUN curl -sSL https://get.docker.com/ | sh

RUN usermod -aG docker jenkins

USER jenkins