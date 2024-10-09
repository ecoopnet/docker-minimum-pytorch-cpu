set -e
set -x

IMAGE_NAME=inom/pytorch-cpu
docker image build . -t "$IMAGE_NAME"

VERSION=python3.12.4-pytorch2.3.1

build() {
  IMAGE="$1"
  ARCH="$2"
  VERSION="$3"
  TARGET="$IMAGE":"${ARCH}-$VERSION"
  docker build --platform linux/"$ARCH" . -t "$TAG"
  docker push "$TARGET"
}


build "$IMAGE_NAME" amd64 "$VERSION"
build "$IMAGE_NAME" arm64 "$VERSION"

