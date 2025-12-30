help:

base-ubuntu:
	cd base-ubuntu && make build
	mkdir -p .devcontainer
	cp -v base-ubuntu/devcontainer.json .devcontainer/devcontainer.json

base-fedora:
	cd base-fedora && make build
	mkdir -p .devcontainer
	cp -v base-fedora/devcontainer.json .devcontainer/devcontainer.json

run-base-ubuntu:
	docker run -it --rm siakhooi/devcontainer:base-ubuntu-0.1.0 bash
run-base-fedora:
	docker run -it --rm siakhooi/devcontainer:base-fedora-0.1.0 bash

.PHONY: base-ubuntu base-fedora
