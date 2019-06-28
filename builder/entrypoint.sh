#!/bin/bash

APPS_DIR=/apps
TYGER_ROOT=$APPS_DIR/Tyger2
TYGER_DIR=$TYGER_ROOT/backend
TYGER_DATA=$TYGER_ROOT/data
TYGER_LOGS=$TYGER_DATA/logs


printf "Starting Services"

uwsgi --emperor $TYGER_ROOT/install/uwsgi.ini &
caddy -log $TYGER_LOGS/caddy.log -pidfile=$TYGER_DATA/caddypid.txt -agree=true -conf=$TYGER_DATA/caddyfile.conf -root=/var/tmp