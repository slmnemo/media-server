#!/bin/bash

# Wrapper script to import user settings, call docker based on docker-compose.yaml and then background it.

# Enter current script directory before executing other commands
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
cd "${SCRIPT_DIR}" || return

source env_uuid_setup.sh

echo Running as user ${DUID} with group ${DGID}

# Launch docker
docker compose up -d
