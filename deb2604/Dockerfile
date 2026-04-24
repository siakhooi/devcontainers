FROM  siakhooi/devcontainer:base-ubuntu2604
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2604" \
      org.opencontainers.image.title="siakhooi/devcontainer:deb2604" \
      org.opencontainers.image.description="Devcontainer for Deb development based on Ubuntu 26.04"

USER root
RUN apt update \
    && apt upgrade -y \
    && apt install -y \
    # testing
    bats \
    # debian packaging
    dpkg-dev fakeroot \
    #
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
