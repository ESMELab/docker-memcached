#!/bin/sh

docker run --name esmelab-memcached -d -p 45001:11211 esmelab/memcached
