# dockerfile to create self-hosted runner in github
# get base image
FROM ubuntu:20.04
# install missing linux tools for runner and for jmeter running 
RUN apt-get update 
RUN apt install -y sudo 
RUN apt install -y nano 
RUN apt install -y wget 
RUN apt install -y curl
# install java 
# RUN apt install openjdk-17-jdk
# add non-root user
RUN useradd -ms /bin/bash docker-user 
RUN echo 'docker-user:docker' | chpasswd
RUN  echo 'docker-user ALL=(ALL) NOPASSWD:ALL' > docker-user-sudo
RUN su docker-user
RUN mkdir actions-runner && cd actions-runner
RUN curl -o actions-runner-linux-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz
RUN tar xzf ./actions-runner-linux-x64-2.311.0.tar.gz
# RUN echo "Current working directory: $(pwd)"
# RUN echo "$cd /home/docker-user/actions-runner/bin"
# RUN sudo /home/docker-user/actions-runner/bin/installdependencies.sh