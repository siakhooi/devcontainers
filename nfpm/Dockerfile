FROM  siakhooi/devcontainer:base-ubuntu2604
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2604" \
      org.opencontainers.image.title="siakhooi/devcontainer:nfpm" \
      org.opencontainers.image.description="Devcontainer for Bash development based on Ubuntu 26.04"

USER root

COPY --chown=root:root --chmod=644 check-binaries /etc/devcontainer/check-binaries

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
    # build tools
    rpm pandoc bats \
    # clean up
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list \
    && apt update \
    && apt install -y nfpm \
    # clean up
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

USER maui
