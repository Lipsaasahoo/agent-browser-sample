#!/bin/bash
set -e

agent-browser state load ./auth-state.json
agent-browser open https://quality.ktern.com/#/setup/launchpad

agent-browser snapshot -i > snapshots/launch.json
agent-browser click @e14 # Launch Ktern