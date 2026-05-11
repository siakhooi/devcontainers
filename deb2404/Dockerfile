FROM  siakhooi/devcontainer:base-ubuntu2404
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2404" \
      org.opencontainers.image.title="siakhooi/devcontainer:deb2404" \
      org.opencontainers.image.description="Devcontainer for Deb development based on Ubuntu 24.04"

USER root
RUN apt update \
    && apt upgrade -y \
    && apt install -y \
    # testing
    bats \
    # debian packaging
    dpkg-dev fakeroot \
    # man page
    pandoc \
    #
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

COPY check-binaries /etc/devcontainer/check-binaries
COPY --chown=root:root --chmod=755 bashrc.d/zzz-show-new-image-available.sh /etc/devcontainer/bashrc.d/zzz-show-new-image-available.sh

USER maui
