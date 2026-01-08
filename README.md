# devcontainers

my devcontainers

## Usage

```
 docker run -it --rm  -v /path/to/custom-init-scripts:/opt/devcontainer/entrypoint.d siakhooi/devcontainer:base-ubuntu-0.1.0  bash

```

### Directories in container

- `/opt/devcontainer/entrypoint.d` - to be mounted by user to add custom init logic

## List of Containers

- siakhooi/devcontainer:base-ubuntu-0.1.0
- siakhooi/devcontainer:base-fedora-0.1.0

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

## Images Tree

```
.
├── ubuntu:24.04
│   └── base-ubuntu
│       ├── bash-deb
│       ├── java-lts (todo)
│       ├── go (todo)
│       ├── python (todo)
│       └── nodejs-lts (todo)
└── fedora:43
    └── base-fedora
        └── bash-rpm
```

### Base

| Component         | type           | base-ubuntu | base-fedora |
| ----------------- | -------------- | ----------- | ----------- |
| tar               | compression    | built-in    | built-in    |
| sed               | stream editor  | built-in    | built-in    |
| awk               | stream editor  | built-in    | built-in    |
| grep              | matching       | built-in    | built-in    |
| curl              | http           | apt         | built-in    |
| gnupg             | crypto         | apt         | built-in    |
| vi/vim            | editor         | apt         | built-in    |
| sudo              | admin          | apt         | dnf         |
| zip               | compression    | apt         | dnf         |
| nano              | editor         | apt         | dnf         |
| make              | build          | apt         | dnf         |
| git               | source control | apt         | dnf         |
| tree              | file           | apt         | dnf         |
| wget              | http           | apt         | dnf         |
| ack               | matching       | apt         | dnf         |
| yq                | stream editor  | todo        | todo        |
| jq                | stream editor  | todo        | todo        |
| gh                | github cli     | todo        | todo        |
| glab              | gitlab cli     | todo        | todo        |
| siakhooi-buildo   | utilities      | todo        | todo        |
| siakhooi-devutils | utilities      | todo        | todo        |
| siakhooi-devy     | utilities      | todo        | todo        |
| siakhooi-ore      | utilities      | todo        | todo        |
| pinentry          | crypto         | todo        | todo        |
| git-lfs           | git lfs        | todo        | todo        |
| openssl           | crypto         | todo        | todo        |
| jv                | json viewer    | todo        | todo        |
| httpie            | http client    | todo        | todo        |

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

### languages

| Component      | type         | java-lts | go   | python | nodejs-lts |
| -------------- | ------------ | -------- | ---- | ------ | ---------- |
| qlty           | quality      | todo     | todo | todo   | todo       |
| jdk            | java-build   | todo     | -    | -      | -          |
| maven          | java-build   | todo     | -    | -      | -          |
| springboot     | java-build   | todo     | -    | -      | -          |
| gradle         | java-build   | todo     | -    | -      | -          |
| jacoco         | java-build   | todo     | -    | -      | -          |
| groovy         | java-build   | todo     | -    | -      | -          |
| go             | go-build     | -        | todo | -      | -          |
| golanci        | go-build     | -        | todo | -      | -          |
| goreleaser     | go-build     | -        | todo | -      | -          |
| python         | python-build | -        | -    | todo   | -          |
| poetry         | python-build | -        | -    | todo   | -          |
| nvm            | typescript   | -        | -    | -      | todo       |
| firebase       | typescript   | -        | -    | -      | todo       |
| sonar          | quality      | todo     | todo | todo   | todo       |
| docker         | container    | todo     | todo | todo   | todo       |
| kubectl        | container    | todo     | todo | todo   | todo       |
| helm           | container    | todo     | todo | todo   | todo       |
| helm-unit-test | container    | todo     | todo | todo   | todo       |
| kind           | container    | todo     | todo | todo   | todo       |

[![Wise](https://img.shields.io/badge/Funding-Wise-33cb56.svg?logo=wise)](https://wise.com/pay/me/siakn3)
[![Buy Me a Coffee](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg?logo=buymeacoffee)](https://www.buymeacoffee.com/siakhooi)
[![Ko-Fi](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg?logo=kofi)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-devcontainers)
