FROM  siakhooi/devcontainer:base-fedora43
LABEL org.opencontainers.image.base.name="siakhooi/devcontainer:base-fedora43" \
      org.opencontainers.image.title="siakhooi/devcontainer:rpm" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.deprecated="true" \
      org.opencontainers.image.description="DEPRECATED: use siakhooi/devcontainer:base-rpm43 instead"

USER root
RUN dnf -y update \
    && dnf -y install \
    # testing
    bats \
    # rpm packaging
    rpmdevtools rpmlint rpm-sign

COPY --chown=root:root --chmod=755 bashrc.d/zzz-show-deprecated-message.sh /etc/devcontainer/bashrc.d/zzz-show-deprecated-message.sh
COPY check-binaries /etc/devcontainer/check-binaries

USER maui
