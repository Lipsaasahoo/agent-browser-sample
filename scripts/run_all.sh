#!/bin/bash
set -e
chmod +x flows/login.sh
./flows/login.sh

chmod +x flows/launch.sh
./flows/launch.sh


rm -f ./auth-state.json
