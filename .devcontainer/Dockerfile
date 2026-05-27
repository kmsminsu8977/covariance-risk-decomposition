FROM mcr.microsoft.com/devcontainers/miniconda:1-3.11-bullseye

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends direnv \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'eval "$(direnv hook bash)"' >> /etc/bash.bashrc \
    && if [ -f /etc/zsh/zshrc ]; then echo 'eval "$(direnv hook zsh)"' >> /etc/zsh/zshrc; fi

WORKDIR /workspaces
