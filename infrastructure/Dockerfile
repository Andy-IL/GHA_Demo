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
RUN apt install -y openjdk-17-jre
# add non-root user
RUN useradd -ms /bin/bash docker-user 
RUN echo 'docker-user:docker' | chpasswd
RUN echo 'docker-user ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/docker-user-sudo
# Now install actions-runner
RUN su docker-user &&  cd /home/docker-user && mkdir /home/docker-user/actions-runner && \
cd  /home/docker-user/actions-runner && \
curl -o actions-runner-linux-x64-2.311.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz && \
 tar xzf ./actions-runner-linux-x64-2.311.0.tar.gz
WORKDIR /home/docker-user/actions-runner
# install dependencies
RUN echo "8\n27" | sudo /home/docker-user/actions-runner/bin/installdependencies.sh 
# back to root
RUN exit
# actions-runner directory is created as user 1001, oddly so make its owner docker-runner ready for the next operations
RUN chown docker-user /home/docker-user/actions-runner
