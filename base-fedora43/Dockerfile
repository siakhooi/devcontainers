FROM  fedora:43

ARG JQ_VERSION=1.8.1
ARG YQ_VERSION=4.52.4
ARG SHFMT_VERSION=3.12.0

RUN dnf update -y \
    && dnf install -y ack tree zip git nano make wget sudo git-lfs openssl unzip podman \
       shellcheck \
    && dnf clean all

# use maui as user
RUN useradd -m -s /bin/bash maui \
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

RUN curl -L -o /etc/yum.repos.d/siakhooi-rpms.repo https://siakhooi.github.io/rpms/siakhooi-rpms.repo \
    && dnf install -y siakhooi-devy \
    && dnf clean all

RUN dnf install -y 'dnf-command(config-manager)' \
    && dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo \
    && dnf install -y gh \
    && dnf clean all

RUN dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo \
    && dnf install -y docker-ce-cli docker-buildx-plugin docker-compose-plugin \
    && dnf clean all \
    && groupadd -f docker \
    && usermod -aG docker maui

RUN curl -L -o /usr/local/bin/shfmt \
    https://github.com/mvdan/sh/releases/download/v${SHFMT_VERSION}/shfmt_v${SHFMT_VERSION}_linux_amd64 \
    && chmod +x /usr/local/bin/shfmt

USER maui
WORKDIR /workspaces

ENTRYPOINT [ "/usr/local/bin/devcontainer-entrypoint.sh" ]
