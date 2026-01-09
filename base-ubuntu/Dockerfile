FROM ubuntu:24.04

RUN apt update \
    && apt upgrade -y \
    && apt install -y --no-install-recommends ack zip nano make wget tree git curl gnupg vim sudo ca-certificates \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# use maui as user
RUN usermod -l maui ubuntu \
    && usermod -d /home/maui -m maui \
    && groupmod -n maui ubuntu \
    && echo "maui ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/maui \
    && chmod 0440 /etc/sudoers.d/maui

COPY --chown=root:root --chmod=755 bin/devcontainer-entrypoint.sh /usr/local/bin/devcontainer-entrypoint.sh
COPY --chown=root:root --chmod=755 bin/devcontainer-init-shell.sh /usr/local/bin/devcontainer-init-shell.sh
COPY --chown=root:root --chmod=755 bashrc.d/check-binaries.sh /etc/devcontainer/bashrc.d/check-binaries.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /home/maui/.bashrc

ADD --chown=root:root --chmod=755 https://github.com/jqlang/jq/releases/download/jq-1.8.1/jq-linux-amd64 /usr/local/bin/jq
ADD --chown=root:root --chmod=755 https://github.com/mikefarah/yq/releases/download/v4.50.1/yq_linux_amd64 /usr/local/bin/yq

RUN wget https://siakhooi.github.io/apt/siakhooi-apt.list -O /etc/apt/sources.list.d/siakhooi-apt.list \
    && wget https://siakhooi.github.io/apt/siakhooi-apt.gpg  -O /usr/share/keyrings/siakhooi-apt.gpg \
    && apt update \
    && apt install -y --no-install-recommends siakhooi-devy \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

USER maui
WORKDIR /workspace

ENTRYPOINT [ "/usr/local/bin/devcontainer-entrypoint.sh" ]
