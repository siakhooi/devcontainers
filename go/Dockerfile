FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-go.sh /etc/devcontainer/bashrc.d/00-setup-go.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN \
    # Install GO
    curl -L -o /opt/go.tar.gz https://go.dev/dl/go1.25.5.linux-amd64.tar.gz \
    && tar -C /opt -xzf /opt/go.tar.gz \
    && rm /opt/go.tar.gz \
    # Install golangci-lint
    && curl -L -o /opt/golangci-lint.tar.gz https://github.com/golangci/golangci-lint/releases/download/v2.8.0/golangci-lint-2.8.0-linux-amd64.tar.gz \
    && tar -C /opt -xzf /opt/golangci-lint.tar.gz \
    && mv /opt/golangci-lint-2.8.0-linux-amd64 /opt/golangci-lint \
    && rm /opt/golangci-lint.tar.gz \
    # Install goreleaser
    && curl -L -o /opt/goreleaser.tar.gz https://github.com/goreleaser/goreleaser/releases/download/v2.13.2/goreleaser_Linux_x86_64.tar.gz \
    && mkdir -p /opt/goreleaser \
    && tar -C /opt/goreleaser -xzf /opt/goreleaser.tar.gz \
    && rm /opt/goreleaser.tar.gz

USER maui
