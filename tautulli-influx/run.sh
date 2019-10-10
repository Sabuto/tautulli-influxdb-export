#!/bin/bash

CONFIG_PATH=/data/options.json

TAUTULLI_HOST=$(jq --raw-output ".host" $CONFIG_PATH)
TAUTULLI_PORT=$(jq --raw-output ".port" $CONFIG_PATH)
TAUTULLI_BASEURL=$(jq --raw-output ".tautullibaseurl" $CONFIG_PATH)
TAUTULLI_KEY=$(jq --raw-output ".tautulliapikey" $CONFIG_PATH)
INTERVAL=$(jq --raw-output ".interval" $CONFIG_PATH)
INFLUXDB_HOST=$(jq --raw-output ".influxdbhost" $CONFIG_PATH)
INFLUXDB_PORT=$(jq --raw-output ".influxdbport" $CONFIG_PATH)
INFLUXDB_DB=$(jq --raw-output ".influxdbdatabase" $CONFIG_PATH)
INFLUXDB_PW=$(jq --raw-output ".influxdbpw" $CONFIG_PATH)
INFLUXDB_USER=$(jq --raw-output ".influxdbuser" $CONFIG_PATH)

python tautulli_influxdb_export.py --tautullihost "$TAUTULLI_HOST" --tautulliport "$TAUTULLI_PORT" --tautulliapikey "$TAUTULLI_KEY" --interval "$INTERVAL" --influxdbhost "$INFLUXDB_HOST" --influxdbport "$INFLUXDB_PORT" --influxdbdatabase "$INFLUXDB_DB" --tautullibaseurl="$TAUTULLI_BASEURL --influxdbuser="$INFLUXDB_USER" --influxdbpassword="$INFLUXDB_PW"
