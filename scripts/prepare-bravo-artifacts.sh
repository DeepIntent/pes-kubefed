

export REGISTRY=${KUBEFED_CONTAINER_REGISTRY:-harbor.central.dev.didevops.com/platform}
export GIT_VERSION=${KUBEFED_CONTAINER_TAG:-0.7.0.pes1}

make build container

docker push $REGISTRY:$GIT_VERSION

./scripts/sync-up-helm-chart.sh



