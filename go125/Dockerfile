FROM  siakhooi/devcontainer:base-ubuntu2404

ARG GO_VERSION=1.25.7
ARG GOLANGCI_LINT_VERSION=2.10.1
ARG GORELEASER_VERSION=2.13.3

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-go.sh /etc/devcontainer/bashrc.d/00-setup-go.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN \
    # Install GO
    curl -L -o /opt/go.tar.gz https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz \
    && tar -C /opt -xzf /opt/go.tar.gz \
    && rm /opt/go.tar.gz \
    # Install golangci-lint
    && curl -L -o /opt/golangci-lint.tar.gz https://github.com/golangci/golangci-lint/releases/download/v${GOLANGCI_LINT_VERSION}/golangci-lint-${GOLANGCI_LINT_VERSION}-linux-amd64.tar.gz \
    && tar -C /opt -xzf /opt/golangci-lint.tar.gz \
    && mv /opt/golangci-lint-${GOLANGCI_LINT_VERSION}-linux-amd64 /opt/golangci-lint \
    && rm /opt/golangci-lint.tar.gz \
    # Install goreleaser
    && curl -L -o /opt/goreleaser.tar.gz https://github.com/goreleaser/goreleaser/releases/download/v${GORELEASER_VERSION}/goreleaser_Linux_x86_64.tar.gz \
    && mkdir -p /opt/goreleaser \
    && tar -C /opt/goreleaser -xzf /opt/goreleaser.tar.gz \
    && rm /opt/goreleaser.tar.gz

USER maui
