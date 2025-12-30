help:

base-ubuntu:
	cd base-ubuntu && make build
	mkdir -p .devcontainer
	cp -v base-ubuntu/devcontainer.json .devcontainer/devcontainer.json

base-fedora:
	cd base-fedora && make build
run-base-ubuntu:
	docker run -it --rm siakhooi/devcontainer:base-ubuntu-0.1.0 bash

.PHONY: base-ubuntu base-fedora
