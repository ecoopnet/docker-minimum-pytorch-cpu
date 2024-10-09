set -e
set -x

IMAGE_NAME=inom/pytorch-cpu
docker image build . -t "$IMAGE_NAME"
docker build --platform linux/amd64 . -t "$IMAGE_NAME"

#docker tag "$APP_ID" "$GCR_URL"
#docker push "$GCR_URL"

