ARG flutter_version

FROM cirrusci/flutter:$flutter_version

RUN sudo apt-get update \
    && sudo apt-get install -y chromium \
    && sudo rm -rf /var/lib/apt/lists/*