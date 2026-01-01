# devcontainers

my devcontainers

## List of Containers

- siakhooi/devcontainer:base-ubuntu-0.1.0
- siakhooi/devcontainer:base-fedora-0.1.0

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

### Base

- base images:
  - base-ubuntu: ubuntu:24.04
  - base-fedora: fedora:43

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

### deb

- base images:
  - deb: base-ubuntu

| Component  | type | deb |
| ---------- | ---- | --- |
| dpkg-dev   |
| fakeroot   |
| shellcheck |
| bats       |
| pandoc     |

### rpm

- base images:
  - rpm: base-fedora

| Component   | type | rpm |
| ----------- | ---- | --- |
| shellcheck  |
| bats        |
| rpm-sign    |
| pinentry    |
| rpmdevtools |
| rpmlint     |

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
| --------- | ---- | --- |
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
