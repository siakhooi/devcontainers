help:

base: base-ubuntu base-fedora
bash: bash-deb bash-rpm

base-ubuntu:
	cd base-ubuntu && make build
	mkdir -p .devcontainer
	cp -v base-ubuntu/devcontainer.json .devcontainer/devcontainer.json

base-fedora:
	cd base-fedora && make build
	mkdir -p .devcontainer
	cp -v base-fedora/devcontainer.json .devcontainer/devcontainer.json

run-base-ubuntu:
	docker run -it --rm  siakhooi/devcontainer:base-ubuntu-0.1.0  bash
#	docker run -it --rm  -v $(realpath ./tests):/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-ubuntu-0.1.0  bash
run-base-fedora:
	docker run -it --rm  siakhooi/devcontainer:base-fedora-0.1.0  bash
#	docker run -it --rm  -v $(realpath ./tests):/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-fedora-0.1.0  bash

bash-deb:
	cd bash-deb && make build
	mkdir -p .devcontainer
	cp -v bash-deb/devcontainer.json .devcontainer/devcontainer.json
bash-rpm:
	cd bash-rpm && make build
	mkdir -p .devcontainer
	cp -v bash-rpm/devcontainer.json .devcontainer/devcontainer.json

run-bash-deb:
	docker run -it --rm  siakhooi/devcontainer:bash-deb-0.1.0  bash
run-bash-rpm:
	docker run -it --rm  siakhooi/devcontainer:bash-rpm-0.1.0  bash

.PHONY: base-ubuntu base-fedora bash-deb bash-rpm
