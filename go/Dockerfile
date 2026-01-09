FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-go.sh /etc/devcontainer/bashrc.d/00-setup-go.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN curl -L -o /opt/go.tar.gz https://go.dev/dl/go1.25.5.linux-amd64.tar.gz \
    && tar -C /opt -xzf /opt/go.tar.gz \
    && rm /opt/go.tar.gz

USER maui
