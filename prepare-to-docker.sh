#!/usr/bin/env bash

./mvnw clean package
mv target/docker-compose-demo-4ahif-grb-1.0.0-SNAPSHOT-runner.jar ./src/main/docker/demo.jar

cd ./src/main/docker
docker-compose build
docker-compose up -d
docker-compose logs