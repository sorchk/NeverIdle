#!/bin/bash
docker rmi -f sorc/nidle
docker run -it --rm \
    --name nidle \
    sorc/nidle -c 37m51s -cp 0.2 -m 200-n 57m7s
