help:

base: base-ubuntu base-fedora
lang: deb rpm jdk nodejs go python jupyter minizinc

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

deb:
	.scripts/build.sh deb
run-deb:
	docker run -it --rm  siakhooi/devcontainer:deb  bash

rpm:
	.scripts/build.sh rpm
run-rpm:
	docker run -it --rm  siakhooi/devcontainer:rpm  bash

minizinc:
	.scripts/build.sh minizinc
run-minizinc:
	docker run -it --rm  siakhooi/devcontainer:minizinc  bash

jdk: jdk21
run-jdk: run-jdk21
jdk25:
	.scripts/build.sh jdk25
run-jdk25:
	docker run -it --rm  siakhooi/devcontainer:jdk25  bash
jdk21:
	.scripts/build.sh jdk21
run-jdk21:
	docker run -it --rm  siakhooi/devcontainer:jdk21  bash

nodejs: nodejs24
run-nodejs: run-nodejs24
nodejs24:
	.scripts/build.sh nodejs24
run-nodejs24:
	docker run -it --rm  siakhooi/devcontainer:nodejs24  bash

go: go126
run-go: run-go126
go126:
	.scripts/build.sh go126
run-go126:
	docker run -it --rm  siakhooi/devcontainer:go126  bash
go125:
	.scripts/build.sh go125
run-go125:
	docker run -it --rm  siakhooi/devcontainer:go125  bash

python: python314
run-python: run-python314
python314:
	.scripts/build.sh python314
run-python314:
	docker run -it --rm  siakhooi/devcontainer:python314  bash

jupyter: jupyter312
run-jupyter: run-jupyter312
jupyter312:
	.scripts/build.sh jupyter312
run-jupyter312:
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
	docker pull siakhooi/devcontainer:deb
	docker pull siakhooi/devcontainer:rpm
	docker pull siakhooi/devcontainer:jdk21
	docker pull siakhooi/devcontainer:jdk25
	docker pull siakhooi/devcontainer:nodejs24
	docker pull siakhooi/devcontainer:go125
	docker pull siakhooi/devcontainer:go126
	docker pull siakhooi/devcontainer:python314
	docker pull siakhooi/devcontainer:jupyter312
	docker pull siakhooi/devcontainer:minizinc
.PHONY: base-ubuntu base-fedora deb rpm jdk21 jdk25 nodejs24 go125 go126 python314 jupyter312 minizinc

run-wf-base:
	gh workflow run workflow-build-base.yml -f push-images=true
run-wf-langs:
	gh workflow run workflow-build-level-1.yml -f push-images=true

clean:
	rm -rf *.log
