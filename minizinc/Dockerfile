FROM  siakhooi/devcontainer:base-ubuntu2404

ARG MINIZINC_VERSION=2.9.5

USER root

RUN curl -L -o /opt/minizinc.tgz https://github.com/MiniZinc/MiniZincIDE/releases/download/${MINIZINC_VERSION}/MiniZincIDE-${MINIZINC_VERSION}-bundle-linux-x86_64.tgz \
    && tar xf /opt/minizinc.tgz -C /opt \
    && rm /opt/minizinc.tgz

COPY check-binaries /etc/devcontainer/check-binaries

USER maui
