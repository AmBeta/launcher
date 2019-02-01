#!/bin/bash

echo "Starting ssh tunnel..."
nohup ./server_linux_amd64 -c configs/ssh.json &

echo "Starting ssserver tunnel..."
nohup ./server_linux_amd64 -c configs/ssserver.json &
