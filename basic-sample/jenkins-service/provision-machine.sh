#!/bin/bash
# rm -rf target2
docker build -t jenkins-refapp .

#mkdir -p target2

docker run -p 8080:8080  \
	-v $(pwd)/credentials-config/.git-credentials:/var/jenkins_home/.git-credentials \
	-v $(pwd)/credentials-config/.gitconfig:/var/jenkins_home/.gitconfig \
	-v $(pwd)/target2:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(which docker):/bin/docker \
	jenkins-refapp
	
