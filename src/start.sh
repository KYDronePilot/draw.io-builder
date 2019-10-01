#!/bin/bash
# Generic script giving user access to draw.io CLI from docker command

# Start a frame buffer since draw.io needs a screen to run
Xvfb :1 -screen 0 1024x768x16 &> xvfb.log &
export DISPLAY=:1.0

# Navigate to where the diagrams will be
cd /diagrams

# Run user command
$1
