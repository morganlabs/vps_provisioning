#!/bin/bash

cd "$(dirname "$0")/.."

VAULT_ITEMS=`ansible-vault decrypt vault --output=-`
SERVER_IP=`jq -r '.server_ip' <<< "$VAULT_ITEMS"`

if [[ "$1" = "with_port" ]]; then
    SERVER_PORT=`jq -r '.ssh_port' <<< "$VAULT_ITEMS"`
    SERVER_PORT=":$SERVER_PORT"
fi

echo "$SERVER_IP$SERVER_PORT"
