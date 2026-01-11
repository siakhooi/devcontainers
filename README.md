# devcontainers

my devcontainers

## Usage

```
 docker run -it --rm  -v /path/to/custom-init-scripts:/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-ubuntu-0.1.0  bash

```

### Directories in container for Customization

- `/opt/devcontainer/entrypoint.d` - to be mounted by user to add custom init logic
- `/opt/devcontainer/bashrc.d` - to be mounted by user to add custom shell logic
- `/etc/devcontainer/check-binaries` - to be mounted by user to add custom binaries list to check

## List of Containers

- siakhooi/devcontainer:base-ubuntu-0.1.0
- siakhooi/devcontainer:base-fedora-0.1.0
- siakhooi/devcontainer:bash-deb-0.1.0
- siakhooi/devcontainer:bash-rpm-0.1.0
- siakhooi/devcontainer:jdk21-0.1.0
- siakhooi/devcontainer:nodejs24-0.1.0
- siakhooi/devcontainer:go-0.1.0
- siakhooi/devcontainer:python-0.1.0

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

## Images Tree

```
.
├── ubuntu:24.04
│   └── base-ubuntu
│       ├── bash-deb
│       ├── jdk21
│       ├── go
│       ├── python (todo)
│       └── nodejs24
└── fedora:43
    └── base-fedora
        └── bash-rpm
```

### Base

| Component       | type           | base-ubuntu | base-fedora | Remark                 |
| --------------- | -------------- | ----------- | ----------- | ---------------------- |
| tar             | compression    | (baseimage) | (baseimage) |
| gzip            | compression    | (baseimage) | (baseimage) |
| sed             | stream editor  | (baseimage) | (baseimage) |
| awk             | stream editor  | (baseimage) | (baseimage) |
| grep            | matching       | (baseimage) | (baseimage) |
| sha256sum       | crypto         | (baseimage) | (baseimage) |
| sha512sum       | crypto         | (baseimage) | (baseimage) |
| curl            | http           | apt         | (baseimage) |
| gnupg           | crypto         | apt         | (baseimage) |
| vi/vim          | editor         | apt         | (baseimage) |
| ca-certificates | crypto         | apt         | -           |
| sudo            | admin          | apt         | dnf         |
| zip             | compression    | apt         | dnf         |
| unzip           | compression    | apt         | dnf         |
| nano            | editor         | apt         | dnf         |
| make            | build          | apt         | dnf         |
| git             | source control | apt         | dnf         |
| git-lfs         | git lfs        | apt         | dnf         |
| tree            | file           | apt         | dnf         |
| wget            | http           | apt         | dnf         |
| ack             | matching       | apt         | dnf         |
| yq              | stream editor  | curl        | curl        | with completion        |
| jq              | stream editor  | curl        | curl        |
| gh              | github cli     | apt         | dnf         | with completion        |
| glab            | gitlab cli     | todo        | todo        |
| siakhooi-devy   | utilities      | apt         | dnf         | incl siakhooi-devutils |
| siakhooi-buildo | utilities      | todo        | todo        |
| siakhooi-ore    | utilities      | todo        | todo        |
| pinentry        | crypto         | todo        | todo        |
| openssl         | crypto         | apt         | dnf         |
| jv              | json viewer    | todo        | todo        |
| httpie          | http client    | todo        | todo        |
| ssh             | remote         | apt         | -           | dnf provided by ?      |

### bash

| Component   | type      | bash-deb | bash-rpm |
| ----------- | --------- | -------- | -------- |
| dpkg-dev    | deb build | apt      | -        |
| fakeroot    | deb build | apt      | -        |
| shellcheck  | linting   | apt      | dnf      |
| bats        | testing   | apt      | dnf      |
| rpm-sign    | rpm build | -        | dnf      |
| rpmdevtools | rpm build | -        | dnf      |
| rpmlint     | rpm build | -        | dnf      |
| pandoc      | manpage   | todo     | todo     |
| man         | help      | todo     | todo     |

### languages

| Component       | type         | jdk21 | go   | python | nodejs24 |
| --------------- | ------------ | ----- | ---- | ------ | -------- |
| qlty            | quality      | todo  | todo | todo   | todo     |
| jdk21           | java-build   | curl  | -    | -      | -        |
| maven           | java-build   | curl  | -    | -      | -        |
| gradle          | java-build   | curl  | -    | -      | -        |
| spring-boot-cli | java-build   | curl  | -    | -      | -        |
| groovy          | java-build   | curl  | -    | -      | -        |
| jacoco          | java-build   | todo  | -    | -      | -        |
| go              | go-build     | -     | curl | -      | -        |
| golangci-lint   | go-build     | -     | curl | -      | -        |
| goreleaser      | go-build     | -     | curl | -      | -        |
| python          | python-build | -     | -    | todo   | -        |
| poetry          | python-build | -     | -    | todo   | -        |
| nvm             | typescript   | -     | -    | -      | curl     |
| node            | typescript   | -     | -    | -      | nvm      |
| yarn            | typescript   | -     | -    | -      | npm      |
| firebase        | typescript   | -     | -    | -      | npm      |
| sonar           | quality      | todo  | todo | todo   | todo     |
| docker          | container    | todo  | todo | todo   | todo     |
| kubectl         | container    | todo  | todo | todo   | todo     |
| helm            | container    | todo  | todo | todo   | todo     |
| helm-unit-test  | container    | todo  | todo | todo   | todo     |
| kind            | container    | todo  | todo | todo   | todo     |

[![Wise](https://img.shields.io/badge/Funding-Wise-33cb56.svg?logo=wise)](https://wise.com/pay/me/siakn3)
[![Buy Me a Coffee](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg?logo=buymeacoffee)](https://www.buymeacoffee.com/siakhooi)
[![Ko-Fi](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg?logo=kofi)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-devcontainers)
