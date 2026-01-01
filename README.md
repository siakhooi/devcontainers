# devcontainers

my devcontainers

## List of Containers

- siakhooi/devcontainer:base-ubuntu-0.1.0
- siakhooi/devcontainer:base-fedora-0.1.0

## Deliverables

- https://hub.docker.com/r/siakhooi/devcontainer

## Components

### Base

| Component | type           | ubuntu    | fedora    |
| --------- | -------------- | --------- | --------- |
| tar       | compression    | built-in  | built-in  |
| sed       | stream editor  | built-in  | built-in  |
| awk       | stream editor  | built-in  | built-in  |
| grep      | matching       | built-in  | built-in  |
| curl      | http           | apt       | built-in  |
| gnupg     | crypto         | apt       | built-in  |
| vi/vim    | editor         | apt       | built-in  |
| sudo      | admin          | apt       | dnf       |
| zip       | compression    | apt       | dnf       |
| nano      | editor         | apt       | dnf       |
| make      | build          | apt       | dnf       |
| git       | source control | apt       | dnf       |
| tree      | file           | apt       | dnf       |
| wget      | http           | apt       | dnf       |
| ack       | matching       | not found | dnf       |
| yq        | stream editor  | not found | not found |
| jq        | stream editor  | not found | not found |
| gh        | github cli     |

### Java

- java
- maven
- gradle
- springboot
- jacoco

### GO

- go, golangci, goreleaser

### Typescript

- nvm

### Firebase

- firebase

### Python

- python

## bash

- dpkg-dev, fakeroot,rpm-sign pinentry
- pandoc, shellcheck, bats
- rpmdevtools rpmlint

### Others

- glab
- docker
- git-lfs
- helm
- helm-unit-test
- openssl
- siakhooi-buildo
  | siakhooi-devutils | utilities | not found | not found |
  | devy | utilities | not found | not found |
- kubectl, kind, jv
- qlty
