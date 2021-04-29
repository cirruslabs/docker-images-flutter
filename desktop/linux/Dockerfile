FROM cirrusci/flutter:dev

RUN apt-get update
RUN apt-get install -y --no-install-recommends cmake ninja-build clang build-essential pkg-config libgtk-3-dev liblzma-dev lcov
RUN flutter config --enable-linux-desktop
