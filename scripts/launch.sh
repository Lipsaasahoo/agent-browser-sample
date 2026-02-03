#!/bin/bash
set -e

npx agent-browser state load ./auth-state.json
npx agent-browser open https://quality.ktern.com/#/setup/launchpad --headless --no-sandbox
sleep 3

npx agent-browser snapshot -i > snapshots/launch.json
npx agent-browser click @e14 # Launch Ktern