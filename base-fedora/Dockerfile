FROM  fedora:43

RUN dnf update -y \
    && dnf install -y ack tree zip git nano make wget sudo \
    && dnf clean all

# use maui as user
RUN useradd -m -s /bin/bash maui \
    && echo "maui ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/maui \
    && chmod 0440 /etc/sudoers.d/maui

COPY --chown=root:root --chmod=755 bin/devcontainer-entrypoint.sh /usr/local/bin/devcontainer-entrypoint.sh
COPY --chown=root:root --chmod=755 bin/devcontainer-init-shell.sh /usr/local/bin/devcontainer-init-shell.sh
COPY --chown=root:root --chmod=755 bashrc.d/check-binaries.sh /etc/devcontainer/bashrc.d/check-binaries.sh

RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /home/maui/.bashrc

RUN curl -L -o /etc/yum.repos.d/siakhooi-rpms.repo https://siakhooi.github.io/rpms/siakhooi-rpms.repo \
    && dnf install -y siakhooi-devy \
    && dnf clean all

USER maui
WORKDIR /workspace

ENTRYPOINT [ "/usr/local/bin/devcontainer-entrypoint.sh" ]
