FROM  siakhooi/devcontainer:base-ubuntu2604
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2604" \
      org.opencontainers.image.title="siakhooi/devcontainer:repoctl" \
      org.opencontainers.image.description="Devcontainer for managing git repositories"

ARG PYTHON_VERSION=3.14
ARG GLAB_VERSION=1.105.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d /etc/devcontainer/bashrc.d
COPY --chown=root:root --chmod=644 check-binaries /etc/devcontainer/check-binaries

RUN apt update \
    && apt upgrade -y \
    && apt install -y \
    # by python
    make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
    libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python3-openssl \
    # clean up
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L -o /tmp/glab.deb https://gitlab.com/gitlab-org/cli/-/releases/v${GLAB_VERSION}/downloads/glab_${GLAB_VERSION}_linux_amd64.deb \
    && dpkg -i /tmp/glab.deb \
    && rm /tmp/glab.deb

USER maui

RUN export PYENV_ROOT="${HOME}/.pyenv" \
    && export PATH="${PYENV_ROOT}/bin:${PATH}" \
    && git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT} \
    && git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv \
    && pyenv install $PYTHON_VERSION \
    && pyenv global $PYTHON_VERSION \
    && eval "$(pyenv init -)" \
    && pip install --upgrade pip \
    && pip install copier
