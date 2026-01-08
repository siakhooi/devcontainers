FROM  siakhooi/devcontainer:base-fedora-0.1.0

RUN sudo dnf -y update \
    && sudo dnf -y install \
    # linting
    shellcheck \
    # testing
    bats \
    # rpm packaging
    rpmdevtools rpmlint rpm-sign