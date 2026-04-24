FROM  siakhooi/devcontainer:base-ubuntu2404
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2404" \
      org.opencontainers.image.title="siakhooi/devcontainer:nodejs24" \
      org.opencontainers.image.description="Devcontainer for Node.js 24 development based on Ubuntu 24.04"

ARG NVM_VERSION=0.40.4
ARG NODE_VERSION=24

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-init-nvm.sh /etc/devcontainer/bashrc.d/00-init-nvm.sh
COPY check-binaries /etc/devcontainer/check-binaries

USER maui

RUN (PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash') \
    && /bin/bash -c 'NVM_DIR="$HOME/.nvm" \
    && source $NVM_DIR/nvm.sh \
    && nvm install ${NODE_VERSION} \
    && npm install -g firebase-tools yarn'
