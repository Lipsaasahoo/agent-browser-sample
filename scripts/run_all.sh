#!/bin/bash
set -e

./flows/login.sh
./flows/launch.sh


rm -f ./auth-state.json
