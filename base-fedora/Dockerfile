FROM  fedora:43

RUN dnf update -y

# use maui as user
RUN useradd -m -s /bin/bash maui

COPY --chown=root:root --chmod=755 init-devcontainer.sh /usr/local/bin/init-devcontainer.sh

USER maui
WORKDIR /workspace

CMD [ "bash", "/usr/local/bin/init-devcontainer.sh" ]
