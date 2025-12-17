FROM ubuntu:24.04

RUN apt update && apt upgrade -y

COPY --chown=root:root --chmod=755 init-devcontainers.sh /usr/local/bin/init-devcontainers.sh

# Setup user, group, and workspace
RUN groupadd -r maui && useradd -r -g maui maui
WORKDIR /working

CMD [ "bash", "/usr/local/bin/init-devcontainers.sh" ]
