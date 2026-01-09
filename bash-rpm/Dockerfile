FROM  siakhooi/devcontainer:base-fedora-0.1.0

USER root
RUN dnf -y update \
    && dnf -y install \
    # linting
    shellcheck \
    # testing
    bats \
    # rpm packaging
    rpmdevtools rpmlint rpm-sign

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
