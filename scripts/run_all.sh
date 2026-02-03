#!/bin/bash
set -e
chmod +x scripts/login.sh
./scripts/login.sh

chmod +x scripts/launch.sh
./scripts/launch.sh

rm -f ./auth-state.json
