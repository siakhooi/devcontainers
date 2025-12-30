FROM ubuntu:24.04

RUN apt update && apt upgrade -y

# use maui as user
RUN usermod -l maui ubuntu && \
    usermod -d /home/maui -m maui && \
    groupmod -n maui ubuntu

COPY --chown=root:root --chmod=755 init-devcontainer.sh /usr/local/bin/init-devcontainer.sh

USER maui
WORKDIR /workspace

CMD [ "bash", "/usr/local/bin/init-devcontainer.sh" ]
