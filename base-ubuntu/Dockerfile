FROM ubuntu:24.04

RUN apt update \
    && apt upgrade -y \
    && apt install -y --no-install-recommends ack zip nano make wget tree git curl gnupg vim sudo \
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# use maui as user
RUN usermod -l maui ubuntu \
    && usermod -d /home/maui -m maui \
    && groupmod -n maui ubuntu \
    && echo "maui ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/maui \
    && chmod 0440 /etc/sudoers.d/maui

COPY --chown=root:root --chmod=755 init-devcontainer.sh /usr/local/bin/init-devcontainer.sh
COPY --chown=root:root --chmod=755 init-shell.sh /usr/local/bin/init-shell.sh
RUN echo 'source /usr/local/bin/init-shell.sh' >> /home/maui/.bashrc

USER maui
WORKDIR /workspace

CMD [ "bash", "/usr/local/bin/init-devcontainer.sh" ]
