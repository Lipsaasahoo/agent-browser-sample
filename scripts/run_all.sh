#!/bin/bash
set -e

./scripts/login.sh
./scripts/launch.sh

rm -f ./auth-state.json
