FROM  siakhooi/devcontainer:base-ubuntu2404
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="siakhooi/devcontainer:base-ubuntu2404" \
      org.opencontainers.image.title="siakhooi/devcontainer:minizinc" \
      org.opencontainers.image.description="Devcontainer for MiniZinc development based on Ubuntu 24.04"

ARG MINIZINC_VERSION=2.10.0

USER root

RUN curl -L -o /opt/minizinc.tgz https://github.com/MiniZinc/MiniZincIDE/releases/download/${MINIZINC_VERSION}/MiniZincIDE-${MINIZINC_VERSION}-bundle-linux-x86_64.tgz \
    && tar xf /opt/minizinc.tgz -C /opt \
    && rm /opt/minizinc.tgz

COPY --chown=root:root --chmod=755 bashrc.d /etc/devcontainer/bashrc.d
COPY --chown=root:root --chmod=644 check-binaries /etc/devcontainer/check-binaries

USER maui
