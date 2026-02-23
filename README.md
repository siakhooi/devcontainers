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
- siakhooi/devcontainer:base-fedora43
- siakhooi/devcontainer:deb
- siakhooi/devcontainer:rpm
- siakhooi/devcontainer:jdk21
- siakhooi/devcontainer:jdk25
- siakhooi/devcontainer:nodejs24
- siakhooi/devcontainer:go125
- siakhooi/devcontainer:go126
- siakhooi/devcontainer:python314
- siakhooi/devcontainer:jupyter312
- siakhooi/devcontainer:minizinc

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

## Images Tree

```
.
├── ubuntu:24.04
│   └── base-ubuntu2404
│       ├── deb
│       ├── jdk21
│       ├── jdk25
│       ├── go125
│       ├── go126
│       ├── python314
│       ├── jupyter312
│       ├── nodejs24
│       └── minizinc
└── fedora:43
    └── base-fedora43
        └── rpm
```

### Base

| Component       | type           | base-ubuntu2404 | base-fedora43 | Remark                 |
| --------------- | -------------- | --------------- | ------------- | ---------------------- |
| tar             | compression    | (baseimage)     | (baseimage)   |                        |
| gzip            | compression    | (baseimage)     | (baseimage)   |                        |
| sed             | stream editor  | (baseimage)     | (baseimage)   |                        |
| awk             | stream editor  | (baseimage)     | (baseimage)   |                        |
| grep            | matching       | (baseimage)     | (baseimage)   |                        |
| sha256sum       | crypto         | (baseimage)     | (baseimage)   |                        |
| sha512sum       | crypto         | (baseimage)     | (baseimage)   |                        |
| curl            | http           | apt             | (baseimage)   |                        |
| gnupg           | crypto         | apt             | (baseimage)   |                        |
| vi/vim          | editor         | apt             | (baseimage)   |                        |
| ca-certificates | crypto         | apt             | -             |                        |
| sudo            | admin          | apt             | dnf           |                        |
| zip             | compression    | apt             | dnf           |                        |
| unzip           | compression    | apt             | dnf           |                        |
| nano            | editor         | apt             | dnf           |                        |
| make            | build          | apt             | dnf           |                        |
| git             | source control | apt             | dnf           |                        |
| git-lfs         | git lfs        | apt             | dnf           |                        |
| tree            | file           | apt             | dnf           |                        |
| wget            | http           | apt             | dnf           |                        |
| ack             | matching       | apt             | dnf           |                        |
| openssl         | crypto         | apt             | dnf           |                        |
| docker          | container      | apt             | dnf           |
| podman          | container      | apt             | dnf           |                        |
| gh              | github cli     | apt             | dnf           | with completion        |
| yq              | stream editor  | curl            | curl          | with completion        |
| jq              | stream editor  | curl            | curl          |                        |
| siakhooi-devy   | utilities      | apt             | dnf           | incl siakhooi-devutils |
| ssh             | remote         | apt             | -             | dnf provided by ?      |
| shfmt           | shell format   | curl            | curl          |                        |
| shellcheck      | linting        | apt             | dnf           |
| jv              | json viewer    | todo            | todo          |                        |
| httpie          | http client    | todo            | todo          |                        |
| siakhooi-buildo | utilities      | todo            | todo          |                        |
| siakhooi-ore    | utilities      | todo            | todo          |                        |
| pinentry        | crypto         | todo            | todo          |                        |
| glab            | gitlab cli     | todo            | todo          |                        |

### bash

| Component   | type      | deb  | rpm  |
| ----------- | --------- | ---- | ---- |
| dpkg-dev    | deb build | apt  | -    |
| fakeroot    | deb build | apt  | -    |
| bats        | testing   | apt  | dnf  |
| rpm-sign    | rpm build | -    | dnf  |
| rpmdevtools | rpm build | -    | dnf  |
| rpmlint     | rpm build | -    | dnf  |
| pandoc      | manpage   | todo | todo |
| man         | help      | todo | todo |

### languages

| Component        | type      | jdk21 | jdk25 | go125 | go126 | python314 | nodejs24 | minizinc |
| ---------------- | --------- | ----- | ----- | ----- | ----- | --------- | -------- | -------- |
| jdk              | lang      | curl  | curl  | -     | -     | -         | -        |
| maven            | build     | curl  | curl  | -     | -     | -         | -        |
| gradle           | build     | curl  | curl  | -     | -     | -         | -        |
| spring-boot-cli  | build     | curl  | curl  | -     | -     | -         | -        |
| groovy           | lang      | curl  | curl  | -     | -     | -         | -        |
| go               | lang      | -     | -     | curl  | curl  | -         | -        |
| golangci-lint    | quality   | -     | -     | curl  | curl  | -         | -        |
| goreleaser       | deploy    | -     | -     | curl  | curl  | -         | -        |
| pyenv            | env       | -     | -     | -     | -     | git clone | -        |
| pyenv-virtualenv | env       | -     | -     | -     | -     | git clone | -        |
| python 3.10      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.11      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.12      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.13      | lang      | -     | -     | -     | -     | pyenv     | -        |
| python 3.14      | lang      | -     | -     | -     | -     | pyenv     | -        |
| poetry           | lang      | -     | -     | -     | -     | pip       | -        |
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
| minizinc         | -         | -     | -     | -     | -     | -         | -        | curl     |

### Jupyter AI

| Component        | type | jupyter312 | Remark              |
| ---------------- | ---- | ---------- | ------------------- |
| openjdk-17-jdk   |      | apt        | required by pyspark |
| pyenv            |      | git clone  |
| pyenv-virtualenv |      | git clone  |
| python 3.12      |      | pyenv      |
| ipykernel        |      | pip        |
| papermill        |      | pip        |
| jupyterlab       |      | pip        |
| pyarrow          |      | pip        |
| pandas           |      | pip        |
| pyspark          |      | pip        |
| numpy            |      | pip        |
| tensorflow       |      | pip        |
| tf2onnx          |      | pip        |
| onnx             |      | pip        |
| scikit-learn     |      | pip        |
| matplotlib       |      | pip        |

[![Wise](https://img.shields.io/badge/Funding-Wise-33cb56.svg?logo=wise)](https://wise.com/pay/me/siakn3)
[![Buy Me a Coffee](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg?logo=buymeacoffee)](https://www.buymeacoffee.com/siakhooi)
[![Ko-Fi](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg?logo=kofi)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-devcontainers)
