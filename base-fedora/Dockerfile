FROM  fedora:43

RUN dnf update -y

COPY --chown=root:root --chmod=755 init-devcontainers.sh /usr/local/bin/init-devcontainers.sh

CMD [ "bash", "/usr/local/bin/init-devcontainers.sh" ]
