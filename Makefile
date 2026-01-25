help:

base: base-ubuntu base-fedora
bash: bash-deb bash-rpm
lang: jdk21 nodejs24 go python314 jupyter312

run-ubuntu:
	docker run -it --rm  ubuntu:24.04 bash
run-fedora:
	docker run -it --rm  fedora:43 bash

base-ubuntu:
	.scripts/build.sh base-ubuntu2404
run-base-ubuntu:
	docker run -it --rm  siakhooi/devcontainer:base-ubuntu2404  bash

base-fedora:
	.scripts/build.sh base-fedora43
run-base-fedora:
	docker run -it --rm  siakhooi/devcontainer:base-fedora43  bash

bash-deb:
	.scripts/build.sh bash-deb
run-bash-deb:
	docker run -it --rm  siakhooi/devcontainer:bash-deb  bash

bash-rpm:
	.scripts/build.sh bash-rpm
run-bash-rpm:
	docker run -it --rm  siakhooi/devcontainer:bash-rpm  bash

jdk21:
	.scripts/build.sh jdk21
run-jdk21:
	docker run -it --rm  siakhooi/devcontainer:jdk21  bash

nodejs24:
	.scripts/build.sh nodejs24
run-nodejs24:
	docker run -it --rm  siakhooi/devcontainer:nodejs24  bash

go:
	.scripts/build.sh go
run-go:
	docker run -it --rm  siakhooi/devcontainer:go-0.1.0  bash

python:
	.scripts/build.sh python314
run-python:
	docker run -it --rm  siakhooi/devcontainer:python314  bash

jupyter:
	.scripts/build.sh jupyter312
run-jupyter:
	docker run -it --rm  siakhooi/devcontainer:jupyter312  bash

# find binary in rpm package
rpm-find:
	rpm -ql rpmdevtools | grep bin
# find binary in deb package
deb-find:
	dpkg -L pandoc | grep bin

docker-pull:
	docker pull siakhooi/devcontainer:base-ubuntu2404
	docker pull siakhooi/devcontainer:base-fedora43
	docker pull siakhooi/devcontainer:bash-deb
	docker pull siakhooi/devcontainer:bash-rpm
	docker pull siakhooi/devcontainer:jdk21
	docker pull siakhooi/devcontainer:nodejs24
	docker pull siakhooi/devcontainer:go-0.1.0
	docker pull siakhooi/devcontainer:python314
	docker pull siakhooi/devcontainer:jupyter312
.PHONY: base-ubuntu base-fedora bash-deb bash-rpm jdk21 nodejs24 go python314 jupyter312

run-wf-base:
	gh workflow run workflow-build-base.yml -f push-images=true
run-wf-langs:
	gh workflow run workflow-build-level-1.yml -f push-images=true

clean:
	rm -rf *.log
