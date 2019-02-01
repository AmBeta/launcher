#!/bin/bash

pid=$(ps -ef | grep server_linux_amd64 | grep -v grep | awk '{ print $2 }')
kill $pid
