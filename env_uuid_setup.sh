# Script containing and exporting various groups required to run the server effectively when sandboxed

DUID=$(getent passwd server | cut -d: -f3)
DGID=$(getent group server | cut -d: -f3)
RENDER_ID=$(getent group render | cut -d: -f3)
VIDEO_ID=$(getent group video | cut -d: -f3)

export DUID
export DGID
export RENDER_ID
export VIDEO_ID
