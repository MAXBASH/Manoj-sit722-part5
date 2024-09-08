#
# Builds a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   VERSION - The version number to tag the images with.
#
# Usage:
#
#       ./scripts/build-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"

docker buildx build --platform linux/amd64 -t $CONTAINER_REGISTRY/book_catalog:latest --file ../book_catalog/Dockerfile .
docker buildx build --platform linux/amd64 -t $CONTAINER_REGISTRY/inventory_management:latest --file ../inventory_management/Dockerfile .
