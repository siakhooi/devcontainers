FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:stable
LABEL org.opencontainers.image.url="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.source="https://github.com/siakhooi/devcontainer" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Siak Hooi" \
      org.opencontainers.image.base.name="gcr.io/google.com/cloudsdktool/google-cloud-cli:stable" \
      org.opencontainers.image.title="siakhooi/devcontainer:gcloud" \
      org.opencontainers.image.description="Devcontainer for gcloud admin"

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
       ca-certificates \
       curl \
       git \
       gnupg \
       make \
       sudo \
       unzip \
       wget \
       zip \
  && echo "cloudsdk ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/cloudsdk \
  && chmod 0440 /etc/sudoers.d/cloudsdk \
  && install -m 0755 -d /etc/apt/keyrings \
  && curl -fsSL https://download.docker.com/linux/debian/gpg \
    | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
  && chmod a+r /etc/apt/keyrings/docker.gpg \
  && . /etc/os-release \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian ${VERSION_CODENAME} stable" \
    > /etc/apt/sources.list.d/docker.list \
  && curl -fsSL https://siakhooi.github.io/apt/siakhooi-apt.list -o /etc/apt/sources.list.d/siakhooi-apt.list \
  && curl -fsSL https://siakhooi.github.io/apt/siakhooi-apt.gpg  -o /usr/share/keyrings/siakhooi-apt.gpg \
  && apt-get update \
  && apt-get install -y --no-install-recommends docker-ce-cli siakhooi-devy siakhooi-json2table \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*

RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin

COPY --chown=root:root --chmod=755 bin/devcontainer-entrypoint.sh /usr/local/bin/devcontainer-entrypoint.sh
COPY --chown=root:root --chmod=755 bin/devcontainer-init-shell.sh /usr/local/bin/devcontainer-init-shell.sh
COPY --chown=root:root --chmod=755 bashrc.d /etc/devcontainer/bashrc.d
COPY --chown=root:root --chmod=644 check-binaries /etc/devcontainer/check-binaries
RUN chmod 755 /etc/devcontainer/check-binaries

RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /home/cloudsdk/.bashrc
RUN echo 'source /usr/local/bin/devcontainer-init-shell.sh' >> /root/.bashrc

USER cloudsdk
# disable sudo message
RUN touch ~/.sudo_as_admin_successful
WORKDIR /workspaces

ENTRYPOINT [ "/usr/local/bin/devcontainer-entrypoint.sh" ]
