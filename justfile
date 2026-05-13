help:

list:
	ls -d base* deb* go* jdk* latex* minizinc* nodejs* python* repoctl* rpm* |cat

run name:
	docker run -it --rm  siakhooi/devcontainer:{{ name }}  bash
make name:
	.scripts/build.sh {{ name }}

base: \
	(make "base-ubuntu2404") \
	(make "base-ubuntu2604") \
	(make "base-fedora43") \
	(make "base-fedora44")

deb: (make "deb2404") (make "deb2604")
rpm: (make "rpm43")   (make "rpm44")
go:  (make "go125") (make "go126") (make "go126_2604")
jdk: (make "jdk21") (make "jdk25") (make "jdk25_2604")

lang: deb rpm go jdk \
	(make "jupyter312") \
	(make "latex") \
	(make "minizinc") \
	(make "minizinc_2604") \
	(make "nodejs24") \
	(make "python314") \
	(make "repoctl")

# find binary in rpm package
rpm-find:
	rpm -ql rpmdevtools | grep bin
# find binary in deb package
deb-find:
	dpkg -L pandoc | grep bin

run-wf-base:
	gh workflow run workflow-build-base.yml -f push-images=true
run-wf-langs:
	gh workflow run workflow-build-level-1.yml -f push-images=true
