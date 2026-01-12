FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-python.sh /etc/devcontainer/bashrc.d/00-setup-python.sh

RUN apt-get update \
    && apt-get install -y \
    build-essential curl git make zlib1g-dev libssl-dev \
    libbz2-dev libreadline-dev libsqlite3-dev libffi-dev \
    libncursesw5-dev liblzma-dev tk-dev wget \
    && rm -rf /var/lib/apt/lists/*

RUN export PYENV_ROOT="/usr/local/pyenv" \
    && export PATH="${PYENV_ROOT}/bin:${PATH}" \
    && git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT} \
    && pyenv install 3.14 \
    && pyenv install 3.13 \
    && pyenv install 3.12 \
    && pyenv install 3.11 \
    && pyenv install 3.10 \
    && pyenv global 3.14 \
    && eval "$(pyenv init -)" \
    && pip install poetry

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
