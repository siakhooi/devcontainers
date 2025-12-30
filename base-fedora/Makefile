-include variables.env
-include ../variables.env
build:
	docker build . \
	-t $(REGISTRY_USERNAME_DOCKER)/$(IMAGE_NAME):$(IMAGE_TAG_BASE) \
	-t ghcr.io/$(REGISTRY_USERNAME_GHCR)/$(IMAGE_NAME):$(IMAGE_TAG_BASE)
