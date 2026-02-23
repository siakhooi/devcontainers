FROM ubuntu:24.04

ARG JQ_VERSION=1.8.1
ARG YQ_VERSION=4.52.4
ARG SHFMT_VERSION=3.12.0

RUN apt update \
    && apt upgrade -y \
    && apt install -y --no-install-recommends \
        ack \
        bzip2 \
        zip \
        nano \
        make \
        wget \
        tree \
        git \
        curl \
        gnupg \
        vim \
        sudo \
        openssl \
        ca-certificates \
        shellcheck \
        git-lfs \
        ssh \
        unzip \
        podman \
        lsb-release \
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
COPY --chown=root:root --chmod=755 bashrc.d /etc/devcontainer/bashrc.d
COPY check-binaries /etc/devcontainer/check-binaries

RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /home/maui/.bashrc
RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /root/.bashrc

ADD --chown=root:root --chmod=755 https://github.com/jqlang/jq/releases/download/jq-${JQ_VERSION}/jq-linux-amd64 /usr/local/bin/jq
ADD --chown=root:root --chmod=755 https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/yq_linux_amd64 /usr/local/bin/yq

RUN wget https://siakhooi.github.io/apt/siakhooi-apt.list -O /etc/apt/sources.list.d/siakhooi-apt.list \
    && wget https://siakhooi.github.io/apt/siakhooi-apt.gpg  -O /usr/share/keyrings/siakhooi-apt.gpg \
    && apt update \
    && apt install -y --no-install-recommends siakhooi-devy \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg -o /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" > /etc/apt/sources.list.d/github-cli.list \
    && apt update \
    && apt install -y gh \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc \
    && chmod a+r /etc/apt/keyrings/docker.asc \
    && echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list \
    && apt update \
    && apt install -y docker-ce-cli docker-buildx-plugin docker-compose-plugin \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd -f docker \
    && usermod -aG docker maui

RUN curl -L -o /usr/local/bin/shfmt \
    https://github.com/mvdan/sh/releases/download/v${SHFMT_VERSION}/shfmt_v${SHFMT_VERSION}_linux_amd64 \
    && chmod +x /usr/local/bin/shfmt

USER maui
# disable sudo message
RUN touch ~/.sudo_as_admin_successful
WORKDIR /workspaces

ENTRYPOINT [ "/usr/local/bin/devcontainer-entrypoint.sh" ]
