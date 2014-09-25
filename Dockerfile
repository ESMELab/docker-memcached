############################################################
# Dockerfile to run Memcached Containers
# Based on CentOS 6 Image
############################################################

# Set the base image to use to CentOS
FROM centos:centos6

# Set the file maintainer (your name - the file's author)
MAINTAINER Paulo McNally <paulomcnally@gmail.com>

# Install dependencies
RUN yum -y install tar wget gcc make libevent libevent-devel

# Go to installation directory
WORKDIR /usr/local/src

# Download memcached source
RUN wget http://www.memcached.org/files/memcached-1.4.20.tar.gz

# Uncompress source
RUN tar xvzf memcached-1.4.20.tar.gz

# Goto source folder
WORKDIR memcached-1.4.20

# Configure
RUN ./configure --enable-64bit

# Make
RUN make

# Make install
RUN make install

# Port to expose (default: 11211)
EXPOSE 11211

# Default Memcached run command arguments
# 1024 = 1GB
CMD ["-m", "1024"]

# Set the user to run Memcached daemon
USER nobody

# Set the entrypoint to memcached binary
ENTRYPOINT memcached
