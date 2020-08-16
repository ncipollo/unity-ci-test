# !/usr/bin/env bash
docker run -it \
    --volume "docker-out:/root/docker-out" \
    --env UNITY_VERSION="2020.1.2f1" \
    unity-test 
