help:

base: base-ubuntu base-fedora
bash: bash-deb bash-rpm
lang: java-lts nodejs-lts go

base-ubuntu:
	.scripts/build.sh base-ubuntu
base-fedora:
	.scripts/build.sh base-fedora

run-base-ubuntu:
	docker run -it --rm  siakhooi/devcontainer:base-ubuntu-0.1.0  bash
#	docker run -it --rm  -v $(realpath ./tests):/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-ubuntu-0.1.0  bash
run-base-fedora:
	docker run -it --rm  siakhooi/devcontainer:base-fedora-0.1.0  bash
#	docker run -it --rm  -v $(realpath ./tests):/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-fedora-0.1.0  bash

bash-deb:
	.scripts/build.sh bash-deb
bash-rpm:
	.scripts/build.sh bash-rpm

run-bash-deb:
	docker run -it --rm  siakhooi/devcontainer:bash-deb-0.1.0  bash
run-bash-rpm:
	docker run -it --rm  siakhooi/devcontainer:bash-rpm-0.1.0  bash

java-lts:
	.scripts/build.sh java-lts

run-java-lts:
	docker run -it --rm  siakhooi/devcontainer:java-lts-0.1.0  bash

nodejs-lts:
	.scripts/build.sh nodejs-lts

run-nodejs-lts:
	docker run -it --rm  siakhooi/devcontainer:nodejs-lts-0.1.0  bash

go:
	.scripts/build.sh go

run-go:
	docker run -it --rm  siakhooi/devcontainer:go-0.1.0  bash

.PHONY: base-ubuntu base-fedora bash-deb bash-rpm java-lts nodejs-lts go
