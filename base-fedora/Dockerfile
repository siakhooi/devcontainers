FROM  fedora:43

RUN dnf update -y \
    && dnf install -y ack tree zip git nano make wget sudo \
    && dnf clean all

# use maui as user
RUN useradd -m -s /bin/bash maui \
    && echo "maui ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/maui \
    && chmod 0440 /etc/sudoers.d/maui

COPY --chown=root:root --chmod=755 init-devcontainer.sh /usr/local/bin/init-devcontainer.sh
COPY --chown=root:root --chmod=755 init-shell.sh /usr/local/bin/init-shell.sh
RUN echo 'source /usr/local/bin/init-shell.sh' >> /home/maui/.bashrc

USER maui
WORKDIR /workspace

CMD [ "bash", "/usr/local/bin/init-devcontainer.sh" ]
