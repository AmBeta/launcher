#!/bin/bash

find ./configs -type f -exec ./kcptun.sh {} \;
