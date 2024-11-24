#!/bin/sh

# ./bin/butler -V

# /bin/butler login

echo "-- Uploading ${DIRECTORY} to Martitchio/Snake:latest"
/bin/butler push ${DIRECTORY} Martitchio/Snake:latest