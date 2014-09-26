#!/bin/sh

# container RAM = 2GB
docker run --name esmelab-memcached -m 2g -d -p 45001:11211 esmelab/memcached
