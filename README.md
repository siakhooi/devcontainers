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

## List of Images
| Image                                 | Expired Date                                              |
| ------------------------------------- | --------------------------------------------------------- |
| siakhooi/devcontainer:base-ubuntu2404 | expire **2029-May**                                       |
| siakhooi/devcontainer:base-ubuntu2604 | expire 2031-May                                           |
| siakhooi/devcontainer:base-fedora43   | expire **2026-Dec**                                       |
| siakhooi/devcontainer:base-fedora44   | expire 2027-Jun                                           |
| siakhooi/devcontainer:deb2404         | expire **2029-May**                                       |
| siakhooi/devcontainer:deb2604         | expire 2031-May                                           |
| siakhooi/devcontainer:repoctl         | expire 2031-May                                           |
| siakhooi/devcontainer:rpm43           | expire **2026-Dec**                                       |
| siakhooi/devcontainer:rpm44           | expire 2027-Jun                                           |
| siakhooi/devcontainer:jdk21           | expire **2029-May**, 2029-Dec (jdk21)                     |
| siakhooi/devcontainer:jdk25           | expire **2029-May**, 2031-Sep (jdk25)                     |
| siakhooi/devcontainer:jdk25_2604      | expire 2031-May, 2031-Sep (jdk25)                         |
| siakhooi/devcontainer:nodejs24        | expire 2029-May, 2028-Apr (nodejs24)                      |
| siakhooi/devcontainer:go125           | expire 2029-May, **2026-Aug** (go125)                     |
| siakhooi/devcontainer:go126           | expire 2029-May, **2027-Feb** (go126)                     |
| siakhooi/devcontainer:go126_2604      | expire 2031-May, 2027-Feb (go126)                         |
| siakhooi/devcontainer:python314       | expire 2029-May, 2026-Oct (python 3.10)                   |
| siakhooi/devcontainer:jupyter312      | expire 2029-May, 2028-Oct (python 3.12), 2029-Sep (jdk17) |
| siakhooi/devcontainer:minizinc        | expire **2029-May**                                       |
| siakhooi/devcontainer:minizinc_2604   | expire 2031-May                                           |
| siakhooi/devcontainer:latex           | expire 2029-May, 2030-Oct (python 3.14)                   |

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

## Images Tree

```
.
├── ubuntu:24.04
│   └── base-ubuntu2404
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
│       ├── repoctl
│       ├── jdk25_2604
│       ├── go126_2604
│       ├── minizinc_2604
│       └── deb2604
├── fedora:43
│   └── base-fedora43
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
| just            | build          | curl            | curl            | curl          | curl          |                        |
| git             | source control | apt             | apt             | dnf           | dnf           |                        |
| git-lfs         | git lfs        | apt             | apt             | dnf           | dnf           |                        |
| tree            | file           | apt             | apt             | dnf           | dnf           |                        |
| wget            | http           | apt             | apt             | dnf           | dnf           |                        |
| ack             | matching       | apt             | apt             | dnf           | dnf           |                        |
| openssl         | crypto         | apt             | -               | dnf           | dnf           |                        |
| docker          | container      | apt             | apt             | dnf           | dnf           |                        |
| podman          | container      | apt             | apt             | dnf           | dnf           |                        |
| man             | help           | apt             | apt             | dnf           | dnf           |                        |
| gh              | github cli     | apt             | apt             | dnf           | dnf           | with completion        |
| yq              | stream editor  | curl            | curl            | curl          | curl          | with completion        |
| jq              | stream editor  | curl            | curl            | curl          | curl          |                        |
| actionlint      | linter         | curl            | curl            | curl          | curl          |                        |
| act             | runner         | curl            | curl            | curl          | curl          |                        |
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

### Repo Tooling
| Component        | type       | repoctl   | Remark          |
| ---------------- | ---------- | --------- | --------------- |
| pyenv            | -          | git clone |
| pyenv-virtualenv | -          | git clone |
| python 3.14      | -          | pyenv     |
| copier           | -          | pip       |
| glab             | gitlab cli | curl      | with completion |

### bash

| Component   | type      | deb2404 | deb2604 | rpm43 | rpm44 |
| ----------- | --------- | ------- | ------- | ----- | ----- |
| dpkg-dev    | deb build | apt     | apt     | -     | -     |
| fakeroot    | deb build | apt     | apt     | -     | -     |
| rpm-sign    | rpm build | -       | -       | dnf   | dnf   |
| rpmdevtools | rpm build | -       | -       | dnf   | dnf   |
| rpmlint     | rpm build | -       | -       | dnf   | dnf   |
| bats        | testing   | apt     | apt     | dnf   | dnf   |
| pandoc      | manpage   | apt     | apt     | dnf   | dnf   |

### languages

| Component        | type      | jdk21 | jdk25 | jdk25_2604 | go125 | go126 | go126_2604 | python314 | nodejs24 |
| ---------------- | --------- | ----- | ----- | ---------- | ----- | ----- | ---------- | --------- | -------- |
| jdk 21           | lang      | curl  | -     | -          | -     | -     | -          | -         | -        |
| jdk 25           | lang      | -     | curl  | curl       | -     | -     | -          | -         | -        |
| maven            | build     | curl  | curl  | curl       | -     | -     | -          | -         | -        |
| gradle           | build     | curl  | curl  | curl       | -     | -     | -          | -         | -        |
| spring-boot-cli  | build     | curl  | curl  | curl       | -     | -     | -          | -         | -        |
| groovy           | lang      | curl  | curl  | curl       | -     | -     | -          | -         | -        |
| go 1.25          | lang      | -     | -     | -          | curl  | -     | -          | -         | -        |
| go 1.26          | lang      | -     | -     | -          | -     | curl  | curl       | -         | -        |
| golangci-lint    | quality   | -     | -     | -          | curl  | curl  | curl       | -         | -        |
| goreleaser       | deploy    | -     | -     | -          | curl  | curl  | curl       | -         | -        |
| dlv              | debugger  | -     | -     | -          | go    | go    | go         | -         | -        |
| gopls            | lang      | -     | -     | -          | go    | go    | go         | -         | -        |
| locales          | env       | -     | -     | -          | -     | -     | -          | apt       | -        |
| pyenv            | env       | -     | -     | -          | -     | -     | -          | git clone | -        |
| pyenv-virtualenv | env       | -     | -     | -          | -     | -     | -          | git clone | -        |
| python 3.10      | lang      | -     | -     | -          | -     | -     | -          | pyenv     | -        |
| python 3.11      | lang      | -     | -     | -          | -     | -     | -          | pyenv     | -        |
| python 3.12      | lang      | -     | -     | -          | -     | -     | -          | pyenv     | -        |
| python 3.13      | lang      | -     | -     | -          | -     | -     | -          | pyenv     | -        |
| python 3.14      | lang      | -     | -     | -          | -     | -     | -          | pyenv     | -        |
| poetry           | lang      | -     | -     | -          | -     | -     | -          | pip       | -        |
| tox              | test      | -     | -     | -          | -     | -     | -          | pip       | -        |
| nvm              | env       | -     | -     | -          | -     | -     | -          | -         | curl     |
| node 24          | lang      | -     | -     | -          | -     | -     | -          | -         | nvm      |
| yarn             | build     | -     | -     | -          | -     | -     | -          | -         | npm      |
| firebase         | firebase  | -     | -     | -          | -     | -     | -          | -         | npm      |
| jacoco           | coverage  | todo  | todo  | todo       | -     | -     | -          | -         | -        |
| qlty             | quality   | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |
| sonar            | quality   | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |
| kubectl          | container | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |
| helm             | container | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |
| helm-unit-test   | container | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |
| kind             | container | todo  | todo  | todo       | todo  | todo  | todo       | todo      | todo     |

### Others

| Component             | minizinc | minizinc_2604 | latex     | remark            |
| --------------------- | -------- | ------------- | --------- | ----------------- |
| minizinc              | curl     | curl          |           |
| texlive               | -        | -             | wget      |
| fontconfig            | -        | -             | apt       |
| pdfinfo               | -        | -             | apt       |
| pyenv                 | -        | -             | git clone |
| pyenv-virtualenv      | -        | -             | git clone |
| python 3.14           | -        | -             | pyenv     |
| pypinyin              | -        | -             | pip       |
| PyYAML                | -        | -             | pip       |
| ctex                  | -        | -             | tlmgr     |
| titlesec              | -        | -             | tlmgr     |
| fonts-arphic-bkai00mp | -        | -             | apt       | AR PL KaitiM Big5 |
| fonts-noto-cjk        | -        | -             | apt       | Noto Serif CJK SC |

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
