ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends asciidoctor openjdk-17-jdk make fonts-noto-cjk

RUN gem install asciidoctor-pdf asciidoctor-diagram rouge coderay
