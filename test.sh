#!/bin/bash -e

./gradlew clean
./gradlew dockerClean
./gradlew docker --info
docker run -it --rm nexus.iroha.tech:19001/sora/seed:1.0.0
