#!/bin/bash
#
# Create pgpass file for Postgres dump and restore

echo "${POSTGRES_HOST}:${POSTGRES_PORT}:${POSTGRES_DB}:${POSTGRES_USER}:${POSTGRES_PASS}" > ~/.pgpass
chmod 600 ~/.pgpass
