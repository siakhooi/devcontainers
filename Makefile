help:

base: base-ubuntu base-fedora
bash: bash-deb bash-rpm
lang: jdk21 nodejs-lts go python

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

jdk21:
	.scripts/build.sh jdk21

run-jdk21:
	docker run -it --rm  siakhooi/devcontainer:jdk21-0.1.0  bash

nodejs-lts:
	.scripts/build.sh nodejs-lts

run-nodejs-lts:
	docker run -it --rm  siakhooi/devcontainer:nodejs-lts-0.1.0  bash

go:
	.scripts/build.sh go

run-go:
	docker run -it --rm  siakhooi/devcontainer:go-0.1.0  bash

python:
	.scripts/build.sh python

run-python:
	docker run -it --rm  siakhooi/devcontainer:python-0.1.0  bash

# find binary in rpm package
rpm-find:
	rpm -ql rpmdevtools | grep bin
# find binary in deb package
deb-find:
	dpkg -L pandoc | grep bin

docker-pull:
	docker pull siakhooi/devcontainer:base-ubuntu-0.1.0
	docker pull siakhooi/devcontainer:base-fedora-0.1.0
	docker pull siakhooi/devcontainer:bash-deb-0.1.0
	docker pull siakhooi/devcontainer:bash-rpm-0.1.0
	docker pull siakhooi/devcontainer:jdk21-0.1.0
	docker pull siakhooi/devcontainer:nodejs-lts-0.1.0
	docker pull siakhooi/devcontainer:go-0.1.0
	docker pull siakhooi/devcontainer:python-0.1.0
.PHONY: base-ubuntu base-fedora bash-deb bash-rpm jdk21 nodejs-lts go python
