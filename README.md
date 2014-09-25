docker-memcached
================

* **OS**: [CentOS 6](https://github.com/CentOS/sig-cloud-instance-images/blob/e1ea1c01abea5f402c650caf12049a711373b27a/docker/Dockerfile)
* **Memcached**: [1.4.20](http://memcached.org/files/)

## Image
[https://registry.hub.docker.com/u/esmelab/memcached/](https://registry.hub.docker.com/u/esmelab/memcached/)

# Clone

    git clone https://github.com/ESMELab/docker-memcached.git

# Build

    docker build -t="esmelab/memcached"

or

    sh ./build.sh

# Run

    docker run --name esmelab-memcached -d -p 45001:11211 esmelab/memcached

or

    sh ./start.sh

# Check process

command

    $ docker ps

output

    CONTAINER ID        IMAGE                      COMMAND                CREATED             STATUS              PORTS                      NAMES
    3527f5a36243        esmelab/memcached:latest   "/bin/sh -c memcache   3 minutes ago       Up 6 seconds        0.0.0.0:45001->11211/tcp   esmelab-memcached

# Check connection

command

    telnet 192.168.59.103 45001

output | ✓

    Trying 192.168.59.103...
    Connected to 192.168.59.103.
    Escape character is '^]'.

output | ✗

    Trying 192.168.59.103...
    telnet: connect to address 192.168.59.103: Connection refused
    telnet: Unable to connect to remote host
