FROM ghcr.io/cirruslabs/android-sdk:35

LABEL org.opencontainers.image.source=https://github.com/cirruslabs/docker-images-flutter
USER root

ARG flutter_version

ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_VERSION=$flutter_version
ENV FLUTTER_ROOT=$FLUTTER_HOME

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --depth 1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

# Temporary workaround for https://github.com/flutter/flutter/issues/163308#issuecomment-2676366371
# It will be fixed in Flutter 3.29.1
# Removing this triggers fetching the correct Flutter engine version 
RUN cd ${FLUTTER_HOME} && rm engine/src/.gn

RUN yes | flutter doctor --android-licenses \
    && flutter doctor \
    && chown -R root:root ${FLUTTER_HOME}

RUN flutter precache --android
