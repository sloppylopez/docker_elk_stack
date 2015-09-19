#!/usr/bin/env bash
sh stop_all_containers.sh
docker-compose build
docker-compose up