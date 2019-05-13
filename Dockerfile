FROM ubuntu:bionic
MAINTAINER Hai Dam <haidv@tomochain.com>

# Install utilities
RUN apt-get update && \
    apt-get -y install locales && \
    locale-gen en_US.UTF-8 && \
    echo 'LANG="en_US.UTF-8"' > /etc/default/locale && \
    sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
    apt-get install -y --force-yes \
    build-essential \
    software-properties-common \
    apt-transport-https \
    curl \
    wget \
    git \
    unzip \
    pwgen

# Set environment variables
ENV HOME /root

# Define working directory
WORKDIR /root

# Define default command
CMD ["bash"]