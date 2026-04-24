# devcontainers

my devcontainers

## Usage

```
 docker run -it --rm  -v /path/to/custom-init-scripts:/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-ubuntu2404  bash

```

### Directories in container for Customization

- `/opt/devcontainer/entrypoint.d` - to be mounted by user to add custom init logic
- `/opt/devcontainer/bashrc.d` - to be mounted by user to add custom shell logic
- `/etc/devcontainer/check-binaries` - to be mounted by user to add custom binaries list to check

## List of Containers

- siakhooi/devcontainer:base-ubuntu2404
- siakhooi/devcontainer:base-ubuntu2604
- siakhooi/devcontainer:base-fedora43
- siakhooi/devcontainer:base-fedora44
- siakhooi/devcontainer:deb2404
- siakhooi/devcontainer:deb2604
- siakhooi/devcontainer:rpm
- siakhooi/devcontainer:rpm43
- siakhooi/devcontainer:rpm44
- siakhooi/devcontainer:jdk21
- siakhooi/devcontainer:jdk25
- siakhooi/devcontainer:nodejs24
- siakhooi/devcontainer:go125
- siakhooi/devcontainer:go126
- siakhooi/devcontainer:python314
- siakhooi/devcontainer:jupyter312
- siakhooi/devcontainer:minizinc
- siakhooi/devcontainer:latex

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

## Images Tree

```
.
├── ubuntu:24.04
│   └── base-ubuntu2404
│       ├── deb (deprecated)
│       ├── deb2404
│       ├── jdk21
│       ├── jdk25
│       ├── go125
│       ├── go126
│       ├── python314
│       ├── jupyter312
│       ├── nodejs24
│       ├── latex
│       └── minizinc
├── ubuntu:26.04
│   └── base-ubuntu2604
│       └── deb2604
├── fedora:43
│   └── base-fedora43
│       ├── rpm  (to be deprecated)
│       └── rpm43
└── fedora:44
│   └── base-fedora44
│       └── rpm44

```

### Base

| Component       | type           | base-ubuntu2404 | base-ubuntu2604 | base-fedora43 | base-fedora44 | Remark                 |
| --------------- | -------------- | --------------- | --------------- | ------------- | ------------- | ---------------------- |
| tar             | compression    | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| gzip            | compression    | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| sed             | stream editor  | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| awk             | stream editor  | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| grep            | matching       | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| sha256sum       | crypto         | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| sha512sum       | crypto         | (baseimage)     | (baseimage)     | (baseimage)   | (baseimage)   |                        |
| curl            | http           | apt             | apt             | (baseimage)   | (baseimage)   |                        |
| gnupg           | crypto         | apt             | apt             | (baseimage)   | (baseimage)   |                        |
| vi/vim          | editor         | apt             | apt             | (baseimage)   | (baseimage)   |                        |
| bzip2           | compression    | apt             | apt             | (baseimage)   | (baseimage)   |                        |
| ca-certificates | crypto         | apt             | apt             | -             | -             |                        |
| sudo            | admin          | apt             | apt             | dnf           | (baseimage)   |                        |
| zip             | compression    | apt             | apt             | dnf           | dnf           |                        |
| unzip           | compression    | apt             | apt             | dnf           | dnf           |                        |
| nano            | editor         | apt             | apt             | dnf           | dnf           |                        |
| make            | build          | apt             | apt             | dnf           | dnf           |                        |
| git             | source control | apt             | apt             | dnf           | dnf           |                        |
| git-lfs         | git lfs        | apt             | apt             | dnf           | dnf           |                        |
| tree            | file           | apt             | apt             | dnf           | dnf           |                        |
| wget            | http           | apt             | apt             | dnf           | dnf           |                        |
| ack             | matching       | apt             | apt             | dnf           | dnf           |                        |
| openssl         | crypto         | apt             | -               | dnf           | dnf           |                        |
| docker          | container      | apt             | apt             | dnf           | dnf           |                        |
| podman          | container      | apt             | apt             | dnf           | dnf           |                        |
| gh              | github cli     | apt             | apt             | dnf           | dnf           | with completion        |
| glab            | gitlab cli     | curl            | curl            | curl          | curl          | with completion        |
| yq              | stream editor  | curl            | curl            | curl          | curl          | with completion        |
| jq              | stream editor  | curl            | curl            | curl          | curl          |                        |
| json2table      | utilities      | apt             | apt             | dnf           | dnf           |                        |
| siakhooi-devy   | utilities      | apt             | apt             | dnf           | dnf           | incl siakhooi-devutils |
| ssh             | remote         | apt             | apt             | -             | -             | dnf provided by ?      |
| shfmt           | shell format   | curl            | curl            | curl          | curl          |                        |
| shellcheck      | linting        | apt             | apt             | dnf           | dnf           |                        |
| jv              | json viewer    | todo            | todo            | todo          | todo          |                        |
| httpie          | http client    | todo            | todo            | todo          | todo          |                        |
| siakhooi-buildo | utilities      | todo            | todo            | todo          | todo          |                        |
| siakhooi-ore    | utilities      | todo            | todo            | todo          | todo          |                        |
| pinentry        | crypto         | todo            | todo            | todo          | todo          |                        |
| xmlstarlet      | utilities      | todo            | todo            | todo          | todo          |                        |

### bash

| Component   | type      | deb  | deb2404 | deb2604 | rpm  | rpm43 | rpm44 |
| ----------- | --------- | ---- | ------- | ------- | ---- | ----- | ----- |
| dpkg-dev    | deb build | apt  | apt     | apt     | -    | -     | -     |
| fakeroot    | deb build | apt  | apt     | apt     | -    | -     | -     |
| bats        | testing   | apt  | apt     | apt     | dnf  | dnf   | dnf   |
| rpm-sign    | rpm build | -    | -       | -       | dnf  | dnf   | dnf   |
| rpmdevtools | rpm build | -    | -       | -       | dnf  | dnf   | dnf   |
| rpmlint     | rpm build | -    | -       | -       | dnf  | dnf   | dnf   |
| pandoc      | manpage   | todo | todo    | todo    | todo | todo  | todo  |
| man         | help      | todo | todo    | todo    | todo | todo  | todo  |

### languages

| Component        | type      | jdk21 | jdk25 | go125 | go126 | python314 | nodejs24 |
| ---------------- | --------- | ----- | ----- | ----- | ----- | --------- | -------- |
| jdk              | lang      | curl  | curl  | -     | -     | -         | -        |
| maven            | build     | curl  | curl  | -     | -     | -         | -        |
| gradle           | build     | curl  | curl  | -     | -     | -         | -        |
| spring-boot-cli  | build     | curl  | curl  | -     | -     | -         | -        |
| groovy           | lang      | curl  | curl  | -     | -     | -         | -        |
| go               | lang      | -     | -     | curl  | curl  | -         | -        |
| golangci-lint    | quality   | -     | -     | curl  | curl  | -         | -        |
| goreleaser       | deploy    | -     | -     | curl  | curl  | -         | -        |
| dlv              | debugger  | -     | -     | go    | go    | -         | -        |
| gopls            | lang      | -     | -     | go    | go    | -         | -        |
| locales          | env       | -     | -     | -     | -     | apt       | -        |
| pyenv            | env       | -     | -     | -     | -     | git clone | -        |
| pyenv-virtualenv | env       | -     | -     | -     | -     | git clone | -        |
| python 3.10      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.11      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.12      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.13      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.14      | lang      | -     | -     | -     | -     | pyenv     | -        |
| poetry           | lang      | -     | -     | -     | -     | pip       | -        |
| tox              | test      | -     | -     | -     | -     | pip       | -        |
| nvm              | env       | -     | -     | -     | -     | -         | curl     |
| node             | lang      | -     | -     | -     | -     | -         | nvm      |
| yarn             | build     | -     | -     | -     | -     | -         | npm      |
| firebase         | firebase  | -     | -     | -     | -     | -         | npm      |
| jacoco           | coverage  | todo  | todo  | -     | -     | -         | -        |
| qlty             | quality   | todo  | todo  | todo  | todo  | todo      | todo     |
| sonar            | quality   | todo  | todo  | todo  | todo  | todo      | todo     |
| kubectl          | container | todo  | todo  | todo  | todo  | todo      | todo     |
| helm             | container | todo  | todo  | todo  | todo  | todo      | todo     |
| helm-unit-test   | container | todo  | todo  | todo  | todo  | todo      | todo     |
| kind             | container | todo  | todo  | todo  | todo  | todo      | todo     |

### Others

| Component             | minizinc | latex     | remark            |
| --------------------- | -------- | --------- | ----------------- |
| minizinc              | curl     |           |
| texlive               | -        | wget      |
| fontconfig            | -        | apt       |
| pdfinfo               | -        | apt       |
| pyenv                 | -        | git clone |
| pyenv-virtualenv      | -        | git clone |
| python 3.14           | -        | pyenv     |
| pypinyin              | -        | pip       |
| PyYAML                | -        | pip       |
| ctex                  | -        | tlmgr     |
| titlesec              | -        | tlmgr     |
| fonts-arphic-bkai00mp | -        | apt       | AR PL KaitiM Big5 |
| fonts-noto-cjk        | -        | apt       | Noto Serif CJK SC |

### Jupyter AI

| Component           | type | jupyter312 | Remark              |
| ------------------- | ---- | ---------- | ------------------- |
| openjdk-17-jdk      |      | apt        | required by pyspark |
| pyenv               |      | git clone  |
| pyenv-virtualenv    |      | git clone  |
| python 3.12         |      | pyenv      |
| ipykernel           |      | pip        |
| papermill           |      | pip        |
| jupyterlab          |      | pip        |
| pyarrow             |      | pip        |
| pandas              |      | pip        |
| pyspark             |      | pip        |
| numpy               |      | pip        |
| tensorflow          |      | pip        |
| tf2onnx             |      | pip        |
| onnx                |      | pip        |
| scikit-learn        |      | pip        |
| matplotlib          |      | pip        |
| importlib_resources |      | pip        |
| lightning           |      | pip        |
| kaggle              |      | pip        |
| kagglehub           |      | pip        |

[![Wise](https://img.shields.io/badge/Funding-Wise-33cb56.svg?logo=wise)](https://wise.com/pay/me/siakn3)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-devcontainers)
