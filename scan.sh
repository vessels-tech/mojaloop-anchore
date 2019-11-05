#!/usr/bin/env bash

# IMAGES="mojaloop/account-lookup-service:v7.4.0-snapshot mojaloop/bulk-api-adapter:v7.1.1-snapshot mojaloop/central-directory:v2.4 mojaloop/central-end-user-registry:v2.4 mojaloop/central-event-processor:v7.1.1 mojaloop/central-ledger:v7.4.3 mojaloop/central-settlement:v7.4.0 mojaloop/email-notifier:v7.3.0 mojaloop/ml-api-adapter:v7.4.1 mojaloop/mock-pathfinder:v2.4 mojaloop/quoting-service:v7.4.0-snapshot mojaloop/simulator:v7.2.1"
IMAGES="mojaloop/central-ledger:v8.3.1"

function addImage() {
  IMAGE=$1

  docker-compose exec engine-api anchore-cli image add ${IMAGE}
}

function scanImage() {
  IMAGE=$1
  docker-compose exec engine-api anchore-cli image wait ${IMAGE}
  # docker-compose exec engine-api anchore-cli image content mojaloop/central-ledger os
  # docker-compose exec engine-api anchore-cli image vuln mojaloop/central-ledger all
  docker-compose exec engine-api anchore-cli evaluate check ${IMAGE}
}

for IMAGE in ${IMAGES}
do
  echo "IMAGE ${IMAGE}"
  addImage ${IMAGE}
  scanImage ${IMAGE}
done
