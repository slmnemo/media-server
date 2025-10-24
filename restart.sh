#!/bin/bash

# Wrapper script to import user settings, call docker based on docker-compose.yaml and then background it.

DUID=$(getent passwd server | cut -d: -f3)
DGID=$(getent group server | cut -d: -f3)
RENDER_ID=$(getent group render | cut -d: -f3)

export DUID
export DGID
export RENDER_ID

echo Running as user ${DUID} with group ${DGID}

# Launch docker
docker compose restart

