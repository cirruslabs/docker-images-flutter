FROM cirrusci/android-sdk:29

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_ROOT=$FLUTTER_HOME \
    FLUTTER_VERSION=$flutter_version

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN sudo apt-get update && \
    sudo apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        wget \
        git \
        mercurial \
        openssh-client \
        subversion && \
    sudo rm -rf /var/lib/apt/lists/*

RUN git clone --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
    flutter doctor