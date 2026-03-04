FROM  siakhooi/devcontainer:base-ubuntu2404

USER root

COPY check-binaries /etc/devcontainer/check-binaries

RUN apt-get update \
    && apt-get install -y \
    poppler-utils \
    fontconfig \
    fonts-arphic-bkai00mp \
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
