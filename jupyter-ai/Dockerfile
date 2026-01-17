FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-python.sh /etc/devcontainer/bashrc.d/00-setup-python.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN apt-get update \
    && apt-get install -y \
    build-essential curl git make zlib1g-dev libssl-dev \
    libbz2-dev libreadline-dev libsqlite3-dev libffi-dev \
    libncursesw5-dev liblzma-dev tk-dev wget \
    openjdk-17-jdk \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
USER maui

RUN export PYENV_ROOT="${HOME}/.pyenv" \
    && export PATH="${PYENV_ROOT}/bin:${PATH}" \
    && git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT} \
    && git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv \
    && pyenv install 3.12 \
    && pyenv global 3.12 \
    && eval "$(pyenv init -)" \
    && pip install --upgrade pip \
    && pip install ipykernel papermill jupyterlab \
    pyarrow pandas pyspark matplotlib \
    numpy tensorflow tf2onnx onnx scikit-learn seaborn \
    tensorflow_datasets
