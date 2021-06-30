

export REGISTRY=${KUBEFED_CONTAINER_REGISTRY:-harbor.central.dev.didevops.com/platform}

export GIT_VERSION=${KUBEFED_CONTAINER_TAG:-0.8.1.pes1}

make build container

docker push "$REGISTRY/kubefed:$GIT_VERSION"

./scripts/sync-up-helm-chart.sh



