FROM  siakhooi/devcontainer:base-ubuntu2404
LABEL org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2404" \
      org.opencontainers.image.title="siakhooi/devcontainer:deb" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.deprecated="true" \
      org.opencontainers.image.description="DEPRECATED: use siakhooi/devcontainer:deb2404 instead"

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

COPY --chown=root:root --chmod=755 bashrc.d/zzz-show-deprecated-message.sh /etc/devcontainer/bashrc.d/zzz-show-deprecated-message.sh
COPY check-binaries /etc/devcontainer/check-binaries

USER maui
