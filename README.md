# Introduction

This repo is a simple docker container interface as well as an initial scaffold for the data structure used in my home
server.

The instructions to run the server are located in [Instructions].

Default ports are used for all the included media server goodies. The included media server backend websites are

- Jellyfin
- Jellyseerr
- *arr Suite
- Deluge Torrent Client

## Instructions

Edit `env_uuid_setup.sh` to use the same permissions (UUID/GUID) as the `data/` directory

Edit `docker-compose.yml`'s Jellyfin instance to use the correct GPU interface, instructions for this can be found on
the Jellyfin website for each of the different GPUs. (The repo is configured for AMD GPUs)

If you wish to not use a GPU, switch to the `no_gpu` branch.

Launch the container by executing the command `./man_server start`.

Make sure to secure all the logins to each website **before** exposing this to the open web!

### Automating Server Restarts

Restarting an existing server can be automated by calling the `man_server` CLI interface
utility with the option `restart`.
