set -e
set -x

IMAGE_NAME=inom/pytorch-cpu
docker image build . -t "$IMAGE_NAME"

VERSION=python3.12.4-pytorch2.3.1

TARGET="$IMAGE_NAME":"$VERSION"
docker buildx build --platform linux/arm64,linux/amd64 -t "$TARGET" --push .
# docker push "$TARGET"


