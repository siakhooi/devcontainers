FROM  siakhooi/devcontainer:base-fedora44
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-fedora44" \
      org.opencontainers.image.title="siakhooi/devcontainer:rpm44" \
      org.opencontainers.image.description="Devcontainer for RPM development based on Fedora 44"

USER root
RUN dnf -y update \
    && dnf -y install \
    # testing
    bats \
    # rpm packaging
    rpmdevtools rpmlint rpm-sign

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
