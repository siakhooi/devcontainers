help:

base: base-ubuntu base-ubuntu2604 base-fedora base-fedora44
lang: deb deb2404 rpm rpm43 rpm44 jdk nodejs go python jupyter minizinc latex

run-ubuntu:
	docker run -it --rm  ubuntu:24.04 bash
run-fedora:
	docker run -it --rm  fedora:43 bash

base-ubuntu: base-ubuntu2404
run-base-ubuntu: run-base-ubuntu2404

base-ubuntu2404:
	.scripts/build.sh base-ubuntu2404
run-base-ubuntu2404:
	docker run -it --rm  siakhooi/devcontainer:base-ubuntu2404  bash
base-ubuntu2604:
	.scripts/build.sh base-ubuntu2604
run-base-ubuntu2604:
	docker run -it --rm  siakhooi/devcontainer:base-ubuntu2604  bash

base-fedora: base-fedora43
run-base-fedora: run-base-fedora43
base-fedora43:
	.scripts/build.sh base-fedora43
run-base-fedora43:
	docker run -it --rm  siakhooi/devcontainer:base-fedora43  bash
base-fedora44:
	.scripts/build.sh base-fedora44
run-base-fedora44:
	docker run -it --rm  siakhooi/devcontainer:base-fedora44  bash

deb:
	.scripts/build.sh deb
run-deb:
	docker run -it --rm  siakhooi/devcontainer:deb  bash
deb2404:
	.scripts/build.sh deb2404
run-deb2404:
	docker run -it --rm  siakhooi/devcontainer:deb2404  bash

rpm:
	.scripts/build.sh rpm
run-rpm:
	docker run -it --rm  siakhooi/devcontainer:rpm  bash
rpm43:
	.scripts/build.sh rpm43
run-rpm43:
	docker run -it --rm  siakhooi/devcontainer:rpm43  bash
rpm44:
	.scripts/build.sh rpm44
run-rpm44:
	docker run -it --rm  siakhooi/devcontainer:rpm44  bash

minizinc:
	.scripts/build.sh minizinc
run-minizinc:
	docker run -it --rm  siakhooi/devcontainer:minizinc  bash
latex:
	.scripts/build.sh latex
run-latex:
	docker run -it --rm  siakhooi/devcontainer:latex  bash

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
	docker pull siakhooi/devcontainer:base-ubuntu2604
	docker pull siakhooi/devcontainer:base-fedora43
	docker pull siakhooi/devcontainer:base-fedora44
	docker pull siakhooi/devcontainer:deb
	docker pull siakhooi/devcontainer:deb2404
	docker pull siakhooi/devcontainer:rpm
	docker pull siakhooi/devcontainer:rpm43
	docker pull siakhooi/devcontainer:rpm44
	docker pull siakhooi/devcontainer:jdk21
	docker pull siakhooi/devcontainer:jdk25
	docker pull siakhooi/devcontainer:nodejs24
	docker pull siakhooi/devcontainer:go125
	docker pull siakhooi/devcontainer:go126
	docker pull siakhooi/devcontainer:python314
	docker pull siakhooi/devcontainer:jupyter312
	docker pull siakhooi/devcontainer:minizinc
.PHONY: base-ubuntu2404 base-ubuntu2604 base-fedora43 base-fedora44 deb deb2404 rpm rpm43 rpm44 jdk21 jdk25 nodejs24 go125 go126 python314 jupyter312 minizinc latex

run-wf-base:
	gh workflow run workflow-build-base.yml -f push-images=true
run-wf-langs:
	gh workflow run workflow-build-level-1.yml -f push-images=true

clean:
	rm -rf *.log
