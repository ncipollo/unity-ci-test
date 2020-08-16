# !/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir "${DIR}/docker-out" > /dev/null 2>&1

docker run -it \
    --volume "${DIR}/docker-out:/root/out" \
    --volume "${DIR}/docker-scripts:/root/docker-scripts" \
    --env UNITY_VERSION="2020.1.2f1" \
    --env ULF_FILE="Unity_v2020.x.ulf" \
    unity-test 
