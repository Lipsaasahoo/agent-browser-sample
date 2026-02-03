#!/bin/bash
set -e

npx agent-browser state load ./auth-state.json
npx agent-browser open https://quality.ktern.com/#/setup/launchpad



npx agent-browser snapshot -i > snapshots/launch.json
npx agent-browser click @e14 # Launch Ktern