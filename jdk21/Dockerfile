FROM  siakhooi/devcontainer:base-ubuntu-0.1.0

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-jdk.sh /etc/devcontainer/bashrc.d/00-setup-jdk.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN \
    # Install JDK21
    curl -L -o /opt/jdk21.tar.gz  https://aka.ms/download-jdk/microsoft-jdk-21.0.8-linux-x64.tar.gz \
    && tar -C /opt -xzf /opt/jdk21.tar.gz \
    && mv /opt/jdk-21.0.8+9 /opt/jdk21 \
    && rm /opt/jdk21.tar.gz \
    # Install Maven
    && curl -L -o /opt/maven.tar.gz  https://dlcdn.apache.org/maven/maven-3/3.9.12/binaries/apache-maven-3.9.12-bin.tar.gz \
    && tar -C /opt -xzf /opt/maven.tar.gz \
    && mv /opt/apache-maven-3.9.12 /opt/maven \
    && rm /opt/maven.tar.gz \
    # Install Gradle
    && curl -L -o /opt/gradle.zip https://services.gradle.org/distributions/gradle-9.2.1-bin.zip \
    && unzip -d /opt /opt/gradle.zip \
    && mv /opt/gradle-9.2.1 /opt/gradle \
    && rm /opt/gradle.zip

USER maui
