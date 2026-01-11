FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

ARG NVM_VERSION=0.40.3
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
