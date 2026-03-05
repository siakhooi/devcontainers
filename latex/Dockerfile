FROM  siakhooi/devcontainer:base-ubuntu2404

USER root

COPY check-binaries /etc/devcontainer/check-binaries

RUN apt-get update \
    && apt-get install -y \
    poppler-utils \
    fontconfig \
    fonts-arphic-bkai00mp \
    # by python
    make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \
    libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python3-openssl \
    # clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://mirrors.mit.edu/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz \
    && tar -xzf install-tl-unx.tar.gz \
    && cd install-tl-2* \
    && echo "selected_scheme scheme-medium" > texlive.profile \
    && echo "TEXDIR /usr/local/texlive" >> texlive.profile \
    && echo "TEXMFCONFIG ~/.texlive/texmf-config" >> texlive.profile \
    && echo "TEXMFVAR ~/.texlive/texmf-var" >> texlive.profile \
    && echo "TEXMFHOME ~/texmf" >> texlive.profile \
    && ./install-tl -profile=texlive.profile \
    && cd .. \
    && rm -rf install-tl-*

RUN PATH=/usr/local/texlive/bin/x86_64-linux:$PATH \
    && tlmgr install ctex \
    && tlmgr update --self --all

ENV PATH="$PATH:/usr/local/texlive/bin/x86_64-linux"

USER maui

RUN export PYENV_ROOT="${HOME}/.pyenv" \
    && export PATH="${PYENV_ROOT}/bin:${PATH}" \
    && git clone https://github.com/pyenv/pyenv.git ${PYENV_ROOT} \
    && git clone https://github.com/pyenv/pyenv-virtualenv.git ${PYENV_ROOT}/plugins/pyenv-virtualenv \
    && pyenv install 3.14 \
    && pyenv global 3.14 \
    && eval "$(pyenv init -)" \
    && pip install --upgrade pip \
    && pip install pypinyin
