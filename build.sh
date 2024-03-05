#!/usr/bin/env bash

mvn -B package
cp src/main/docker/Dockerfile target/
docker login ghcr.io -u $GITHUB_ACTOR -p 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
docker build --tag ghcr.io/davidlehner1/backend:latest ./target
docker push ghcr.io/davidlehner1/backend:latest