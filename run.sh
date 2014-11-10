set -e;

if [ ! -n "$WERCKER_DOCKER_SAVE_IMAGE" ]; then
    error 'Please specify docker image';
    exit 1;
fi

mkdir -p `dirname $WERCKER_ROOT/$WERCKER_DOCKER_SAVE_IMAGE.tar`
docker save $WERCKER_DOCKER_SAVE_IMAGE > $WERCKER_ROOT/$WERCKER_DOCKER_SAVE_IMAGE.tar
