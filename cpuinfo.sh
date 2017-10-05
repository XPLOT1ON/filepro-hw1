#!/bin/bash
cat /proc/cpuinfo | grep "model name" | cut -d':' -f2 | cut -c 2-
