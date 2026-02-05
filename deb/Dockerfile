FROM  siakhooi/devcontainer:base-ubuntu2404

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
