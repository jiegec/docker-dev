# docker-dev

Create a development environment in docker!

Usage:

1. Run `build.sh`: the script builds image `docker-dev` based on Debian Stable.
2. Run `start.sh`: the script starts a container or attaches to the container.

What's included:

1. Common packages: compilers, shells, utilities.
2. SSH server: for remote access on port 2222 with password authentication disabled.
3. User and group permission sync: the user and group remain the same as host.

Caveats:

1. You need to remove and rebuild the image if Dockerfile is changed.
2. If you quit the attched session, the container will stop.
