FROM  siakhooi/devcontainer:base-ubuntu2404

USER root

COPY check-binaries /etc/devcontainer/check-binaries

RUN apt-get update \
    && apt-get install -y \
    texlive-xetex \
    texlive-lang-chinese \
    texlive-latex-extra \
    poppler-utils \
    && rm -rf /var/lib/apt/lists/*

USER maui
