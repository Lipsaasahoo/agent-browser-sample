#!/bin/bash
set -e

# set -a
# source .env
# set +a // not need in CI

# agent-browser open https://quality.ktern.com/#/auth/login
npx agent-browser open https://quality.ktern.com/#/auth/login --headless --no-sandbox
sleep 3
npx agent-browser snapshot -i > snapshots/login.json

npx agent-browser type @e1 "$EMAIL"
npx agent-browser type @e2 "$PASSWORD"
npx agent-browser click @e3
npx agent-browser state save ./auth-state.json