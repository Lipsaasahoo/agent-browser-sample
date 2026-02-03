#!/bin/bash
set -e

set -a
source .env
set +a

agent-browser open https://quality.ktern.com/#/auth/login
agent-browser snapshot -i > snapshots/login.json

agent-browser type @e1 "$EMAIL"
agent-browser type @e2 "$PASSWORD"
agent-browser click @e3

agent-browser state save ./auth-state.json
