FROM  siakhooi/devcontainer:base-fedora44

USER root
RUN dnf -y update \
    && dnf -y install \
    # testing
    bats \
    # rpm packaging
    rpmdevtools rpmlint rpm-sign

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
