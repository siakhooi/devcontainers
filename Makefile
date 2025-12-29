help:

base-ubuntu:
	cd base-ubuntu && make build
	mkdir -p .devcontainer
	cp -v base-ubuntu/devcontainer.json .devcontainer/devcontainer.json

base-fedora:
	cd base-fedora && make build

.PHONY: base-ubuntu base-fedora
