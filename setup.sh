#!/usr/bin/env bash

mkdir -p src

touch .env
echo "UID=$(id -u)" >> .env
echo "GID=$(id -g)" >> .env
echo "COMPOSER_AUTH={}" >> .env

echo "Setup complete. Get started by building containers with docker compose build"