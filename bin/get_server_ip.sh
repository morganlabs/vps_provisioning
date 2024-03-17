#!/bin/bash

cd "$(dirname "$0")/.."

VAULT_ITEMS=`ansible-vault decrypt vault --output=-`
SERVER_IP=`jq -r '.server_ip' <<< "$VAULT_ITEMS"`

echo "$SERVER_IP"
