

export REGISTRY=harbor.central.dev.didevops.com
export GIT_VERSION=0.7.0.pes1

make build container

docker push $REGISTRY:$GIT_VERSION