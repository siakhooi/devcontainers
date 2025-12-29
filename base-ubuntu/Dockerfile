FROM ubuntu:24.04

RUN apt update && apt upgrade -y

COPY --chown=root:root --chmod=755 init-devcontainers.sh /usr/local/bin/init-devcontainers.sh

WORKDIR /workspace

CMD [ "bash", "/usr/local/bin/init-devcontainers.sh" ]
