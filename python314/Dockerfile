FROM  siakhooi/devcontainer:base-ubuntu2404
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2404" \
      org.opencontainers.image.title="siakhooi/devcontainer:python314" \
      org.opencontainers.image.description="Devcontainer for Python 3.14 development based on Ubuntu 24.04"

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-python.sh /etc/devcontainer/bashrc.d/00-setup-python.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN apt-get update \
    && apt-get install -y \
    build-essential curl git make zlib1g-dev libssl-dev \
    libbz2-dev libreadline-dev libsqlite3-dev libffi-dev \
    libncursesw5-dev liblzma-dev tk-dev wget \
    locales \
    && locale-gen en_US.UTF-8 \
    && update-locale LANG=en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

USER maui

RUN export PYENV_ROOT="${HOME}/.pyenv" \
    && export PATH="${PYENV_ROOT}/bin:${PATH}" \
    && git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT} \
    && git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv \
    && pyenv install 3.14 \
    && pyenv install 3.13 \
    && pyenv install 3.12 \
    && pyenv install 3.11 \
    && pyenv install 3.10 \
    && pyenv global 3.14 3.13 3.12 3.11 3.10 \
    && eval "$(pyenv init -)" \
    && pip install --upgrade pip \
    && pip install poetry tox
