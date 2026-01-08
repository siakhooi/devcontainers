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
│   │   └── bash-deb
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
| yq                | stream editor  | not found   | not found   |
| jq                | stream editor  | not found   | not found   |
| gh                | github cli     |
| glab              | gitlab cli     |
| siakhooi-buildo   | utilities      | not found   | not found   |
| siakhooi-devutils | utilities      | not found   | not found   |
| siakhooi-devy     | utilities      | not found   | not found   |
| siakhooi-ore      | utilities      | not found   | not found   |

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
| pandoc      |
| pinentry    |

### quality

- base images:
  - quality: base-ubuntu

| Component | type | deb |
| --------- | ---- | --- |
| qlty      |

### Java

- base images:
  - jdk-lts: quality

| Component  | type | jdk-lts |
| ---------- | ---- | ------- |
| jdk        |
| maven      |
| springboot |
| gradle     |
| jacoco     |
| groovy     |

### GO

- base images:
  - go: quality

| Component  | type | go  |
| ---------- | ---- | --- |
| go         |
| golanci    |
| goreleaser |

### Python

- base images:
  - python: quality

| Component | type | python |
| --------- | ---- | ------ |
| python    |
| poetry    |

### Typescript

- nvm

### Firebase

- firebase

### Others

- docker
- git-lfs
- helm
- helm-unit-test
- openssl
- kubectl, kind, jv
- sonar

[![Wise](https://img.shields.io/badge/Funding-Wise-33cb56.svg?logo=wise)](https://wise.com/pay/me/siakn3)
[![Buy Me a Coffee](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg?logo=buymeacoffee)](https://www.buymeacoffee.com/siakhooi)
[![Ko-Fi](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg?logo=kofi)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-devcontainers)
