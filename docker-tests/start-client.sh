#!/bin/bash
set -e

INTERFACE="${INTERFACE:-innernet}"
INSTALL_ARGS=()
if [[ -n "${LISTEN_PORT:-}" ]]; then
    INSTALL_ARGS+=(--listen-port "$LISTEN_PORT")
fi

innernet $INNERNET_ARGS install \
    "${INSTALL_ARGS[@]}" \
    --name "$INTERFACE" \
    --delete-invite \
    --no-write-hosts \
    /app/invite.toml

while true; do
    if [[ $CLIENT_ARGS =~ --verbose ]]; then
        innernet $INNERNET_ARGS up --no-write-hosts "$INTERFACE"
    else
        innernet $INNERNET_ARGS up --no-write-hosts "$INTERFACE" > /dev/null
    fi
    sleep 1
done
