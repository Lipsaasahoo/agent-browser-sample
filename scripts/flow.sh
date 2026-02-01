#!/bin/bash
# Auto-generated Agent-Browser flow

agent-browser open https://sauce-demo.myshopify.com/

agent-browser snapshot -i --json > snapshots/flow-1.json

agent-browser click @e21

agent-browser snapshot -i --json > snapshots/flow-2.json

agent-browser click @e26

agent-browser snapshot -i --json > snapshots/flow-3.json

agent-browser click @e8