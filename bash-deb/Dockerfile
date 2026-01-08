FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

RUN sudo apt update \
    && sudo apt upgrade -y \
    && sudo apt install -y \
    # linting
    shellcheck \
    # testing
    bats \
    # debian packaging
    dpkg-dev fakeroot \
    #
    && sudo apt clean \
    && sudo rm -rf /var/lib/apt/lists/*
