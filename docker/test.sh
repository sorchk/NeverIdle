#!/bin/bash
docker rmi -f sorc/nidle
docker run -it --rm \
    --name nidle \
    sorc/nidle -c 37m51s -cp 0.2 -m 200 -n 57m7s

docker run -d \
    --name nidle \
    sorc/nidle -cp 0.2 -m 10 -n 57m37s