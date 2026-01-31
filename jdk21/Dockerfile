FROM  siakhooi/devcontainer:base-ubuntu2404

ARG JDK_VERSION=21
ARG MAVEN_VERSION=3.9.12
ARG GRADLE_VERSION=9.3.1
ARG SPRING_BOOT_CLI_VERSION=4.0.1
ARG GROOVY_VERSION=5.0.3

USER root

COPY --chown=root:root --chmod=755 bashrc.d/00-setup-jdk.sh /etc/devcontainer/bashrc.d/00-setup-jdk.sh
COPY check-binaries /etc/devcontainer/check-binaries

RUN \
    # Install JDK21
    curl -L -o /opt/jdk21.tar.gz https://api.adoptium.net/v3/binary/latest/${JDK_VERSION}/ga/linux/x64/jdk/hotspot/normal/eclipse \
    && tar -C /opt -xzf /opt/jdk21.tar.gz \
    && mv /opt/jdk-${JDK_VERSION}.* /opt/jdk21 \
    && rm /opt/jdk21.tar.gz \
    # Install Maven
    && curl -L -o /opt/maven.tar.gz  https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
    && tar -C /opt -xzf /opt/maven.tar.gz \
    && mv /opt/apache-maven-${MAVEN_VERSION} /opt/maven \
    && rm /opt/maven.tar.gz \
    # Install Gradle
    && curl -L -o /opt/gradle.zip https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && unzip -d /opt /opt/gradle.zip \
    && mv /opt/gradle-${GRADLE_VERSION} /opt/gradle \
    && rm /opt/gradle.zip \
    # Install springboot cli
    && curl -L -o /opt/spring-boot-cli.tar.gz https://repo.maven.apache.org/maven2/org/springframework/boot/spring-boot-cli/${SPRING_BOOT_CLI_VERSION}/spring-boot-cli-${SPRING_BOOT_CLI_VERSION}-bin.tar.gz \
    && tar -C /opt -xzf /opt/spring-boot-cli.tar.gz \
    && mv /opt/spring-${SPRING_BOOT_CLI_VERSION} /opt/spring-boot-cli \
    && rm /opt/spring-boot-cli.tar.gz \
    # install groovy
    && curl -L -o /opt/groovy.zip https://groovy.jfrog.io/artifactory/dist-release-local/groovy-zips/apache-groovy-binary-${GROOVY_VERSION}.zip \
    && unzip -d /opt /opt/groovy.zip \
    && mv /opt/groovy-${GROOVY_VERSION} /opt/groovy \
    && rm /opt/groovy.zip

USER maui
