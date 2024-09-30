#
# Publishes a Docker image.
#
# Environment variables:
#
#   CONTAINER_REGISTRY - The hostname of your container registry.
#   REGISTRY_UN - User name for your container registry.
#   REGISTRY_PW - Password for your container registry.
#
# Usage:
#
#       ./scripts/push-image.sh
#

set -u # or set -o nounset
: "$CONTAINER_REGISTRY"
: "$REGISTRY_UN"

echo $(az acr credential show --name $REGISTRY_UN --query "passwords[0].value" --output tsv) | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book_catalog:latest
docker push $CONTAINER_REGISTRY/inventory_management:latest
